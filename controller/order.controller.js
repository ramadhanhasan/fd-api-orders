const orderService  = require('../service/order.service');
const logger = require('../logger/api.logger');

class OrderController {

    async getOrders() {
        logger.info('Controller: getOrders')
        return await orderService.getOrders();
    }

    async getOrdersPivot() {
        logger.info('Controller: getOrders')
        return await orderService.getOrdersPivot();
    }

    async createOrder(order) {
        logger.info('Controller: createOrder', order);
        return await orderService.createOrder(order);
    }

    async updateOrder(order) {
        logger.info('Controller: updateOrder', order);
        return await orderService.updateOrder(order);
    }

    async deleteOrder(orderId) {
        logger.info('Controller: deleteOrder', orderId);
        return await orderService.deleteOrder(orderId);
    }
}
module.exports = new OrderController();