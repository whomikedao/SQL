'use strict';

module.exports = {
  up: (queryInterface, Sequelize) => {
      // return queryInterface.renameTable('tasks', 'newTasks');
      return queryInterface.addColumn(
        'tasks',
        'descriptions',
        Sequelize.STRING
      );

  },

  down: (queryInterface, Sequelize) => {
      // return queryInterface.renameTable('newTasks', 'tasks'); 
      //to do the down function run: sequelize db:migrate:undo
      return queryInterface.removeColumn('tasks', 'descriptions');


  }
};
