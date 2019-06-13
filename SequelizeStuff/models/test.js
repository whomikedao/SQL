'use strict';
module.exports = (sequelize, DataTypes) => {
  const test = sequelize.define('test', {
    title: DataTypes.STRING
  }, {
    timestamps: false,
    freezeTableName: true
  });
  test.associate = function(models) {
    // associations can be defined here
  };
  return test;
};