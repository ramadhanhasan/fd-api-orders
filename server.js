const express = require('express');
const bodyParser = require('body-parser');
var cors = require('cors')
require('dotenv').config()

const orderController = require('./controller/order.controller')

const app = express();
const port = process.env.PORT || 3000;

app.use(bodyParser.json());
app.use(cors())

app.get('/api/orders', (req, res) => {
    orderController.getOrders().then(data => res.json(data));
});

app.get('/api/orders/pivot', (req, res) => {
    orderController.getOrdersPivot().then(data => res.json(data));
});

app.post('/api/order', (req, res) => {
    orderController.createOrder(req.body).then(data => res.json(data));
});

app.put('/api/order', (req, res) => {
    orderController.updateOrder(req.body).then(data => res.json(data));
});

app.delete('/api/order/:id', (req, res) => {
    orderController.deleteOrder(req.params.id).then(data => res.json(data));
});

app.get('/', (req, res) => {
    res.send(`<h1>API Works !!!</h1>`)
});

app.listen(port, () => {
    console.log(`Server listening on the port ${port}`);
})