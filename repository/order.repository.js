const { connect } = require('../config/db.config');
const logger = require('../logger/api.logger');
const { QueryTypes } = require('sequelize');

class OrderRepository {

    db = {};

    constructor() {
        this.db = connect();
        // For Development
        // this.db.sequelize.sync({ force: true }).then(() => {
        //     console.log("Drop and re-sync db.");
        // });
    }

    async getOrders() {   
        try {
            const orders = await this.db.orders.findAll();
            return orders;
        } catch (err) {
            console.log(err);
            return [];
        }
    }

    async getOrdersPivot() {   
        try {
            // const orders = await this.db.orders.findAll();
            let query = `SELECT item FROM orders GROUP BY item ORDER BY item ASC`
            const items = await this.db.orders.sequelize.query(query)
            
            if(items[0].length == 0) return []
            
            let cases = ''
            for(var i = 0;i < items[0].length; i++){
                if(i == items[0].length -1){
                    cases += `SUM(CASE WHEN item ='${items[0][i].item}' then quantity else 0 end) as ${items[0][i].item}`
                }else{
                    cases += `SUM(CASE WHEN item ='${items[0][i].item}' then quantity else 0 end) as ${items[0][i].item},`
                }
            }

            query = `SELECT CONCAT(max(firstname),' ', max(lastname)) as fullname, email, ${cases} FROM orders GROUP by email`
            const orders = await this.db.orders.sequelize.query(query)
            console.log(orders)
            return orders[0];
        } catch (err) {
            console.log(err);
            return [];
        }
    }

    async createOrder(order) {
        let data = {};
        try {
            order.createdate = new Date().toISOString();
            order.updateddate = new Date().toISOString();
            data = await this.db.orders.create(order);
        } catch(err) {
            logger.error('Error::' + err);
        }
        return data;
    }

    async updateOrder(order) {
        let data = {};
        try {
            order.updateddate = new Date().toISOString();
            data = await this.db.orders.update({...order}, {
                where: {
                    id: order.id
                }
            });
        } catch(err) {
            logger.error('Error::' + err);
        }
        return data;
    }

    async deleteOrder(orderId) {
        let data = {};
        try {
            data = await this.db.orders.destroy({
                where: {
                    id: orderId
                }
            });
        } catch(err) {
            logger.error('Error::' + err);
        }
        return data;
        return {status: `${data.deletedCount > 0 ? true : false}`};
    }

}

module.exports = new OrderRepository();