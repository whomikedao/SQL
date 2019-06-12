'use strict';
module.exports = (sequelize, DataTypes) => {
  const task = sequelize.define('task', {
    title: DataTypes.STRING
  }, {});
  task.associate = function(models) {
    // associations can be defined here
  };
  return task;
};