const orderRepository = require('../repository/order.repository');

class OrderService {

    constructor() {}

    async getOrders() {
        return await orderRepository.getOrders();
    }

    async getOrdersPivot() {
        return await orderRepository.getOrdersPivot();
    }

    async createOrder(order) {
        return await orderRepository.createOrder(order);
    }

    async updateOrder(order) {
        return await orderRepository.updateOrder(order);
    }

    async deleteOrder(orderId) {
        return await orderRepository.deleteOrder(orderId);
    }

}

module.exports = new OrderService();