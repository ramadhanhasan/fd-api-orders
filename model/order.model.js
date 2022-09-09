module.exports = (sequelize, DataTypes, Model) => {

    class Orders extends Model {}

    Orders.init({
        // Model attributes are defined here
        id: {
          type: DataTypes.INTEGER,
          allowNull: false,
          autoIncrement: true,
          primaryKey: true
        },
        firstname: {
          type: DataTypes.STRING,
          allowNull : false
        },
        lastname: {
          type: DataTypes.STRING,
          allowNull : false
        },
        email: {
          type: DataTypes.STRING,
          allowNull : false
        },
        item: {
          type: DataTypes.STRING,
          allowNull : false
        },
        quantity: {
          type: DataTypes.INTEGER,
          allowNull : false
        },
        total_price: {
          type: DataTypes.DECIMAL,
          allowNull : false
        },
        createdate: {
          type: DataTypes.DATE
        },
        updateddate: {
          type: DataTypes.DATE
        },
      }, {
        // Other model options go here
        sequelize, // We need to pass the connection instance
        modelName: 'orders' // We need to choose the model name
      },
      {
        initialAutoIncrement: 1,
      });
      
      return Orders;
}