'use strict';
module.exports = (sequelize, DataTypes) => {
  const task = sequelize.define('task', {
    title: DataTypes.STRING
  }, {});
  task.associate = function(models) {
    // associations can be defined here
    //CREATES A USER ID INSIDE OF TASK TABLE. 
    //BECAUSE IT'S A ONE-TO-MANY 
      //connecting one source with multiple targets
    models.task.belongsTo(models.user);
  };
  return task;
};