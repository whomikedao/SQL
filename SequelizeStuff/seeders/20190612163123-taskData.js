'use strict';

module.exports = {
  up: (queryInterface, Sequelize) => {
    
      // Add altering commands here.
      // Return a promise to correctly handle asynchronicity.

      // Example:
      return queryInterface.bulkInsert('tasks', [{
        title: 'practice flying',
        createdAt: new Date(),
        updatedAt: new Date(),
        userId: 1
      },
      {
        title: 'practice spells',
        createdAt: new Date(),
        updatedAt: new Date(),
        userId: 2
      },
      {
        title: 'potions',
        createdAt: new Date(),
        updatedAt: new Date(),
        userId: 3
      },
      {
        title: 'being an ass',
        createdAt: new Date(),
        updatedAt: new Date(),
        userId: 4
      },
      {
        title: 'get rid of scar',
        createdAt: new Date(),
        updatedAt: new Date(),
        userId: 1
      }], {});
    
  },

  down: (queryInterface, Sequelize) => {
    
      // Add reverting commands here.
      // Return a promise to correctly handle asynchronicity.

      // Example:
      return queryInterface.bulkDelete('tasks', null, {});
    
  }
};
