'use strict';

module.exports = {
  up: (queryInterface, Sequelize) => {
    
      // Add altering commands here.
      // Return a promise to correctly handle asynchronicity.

      // Example:
      return queryInterface.bulkInsert('users', [{
        firstName: 'Harry',
        lastName: 'Potter',
        email: 'hpotter@hogmail.com',
        createdAt: new Date(),
        updatedAt: new Date()
      },
      { firstName: 'Hermione',
        lastName: 'Granger',
        email: 'hgranger@hogmail.com',
        createdAt: new Date(),
        updatedAt: new Date()
      },
      { firstName: 'Ron',
        lastName: 'Weasley',
        email: 'rweasley@hogmail.com',
        createdAt: new Date(),
        updatedAt: new Date()
      },
      { firstName: 'Snape',
        lastName: 'unknown',
        email: 'sunknown@hogmail.com',
        createdAt: new Date(),
        updatedAt: new Date()
      }], {});

  },

  down: (queryInterface, Sequelize) => {
    /*
      Add reverting commands here.
      Return a promise to correctly handle asynchronicity.

      Example:
      return queryInterface.bulkDelete('People', null, {});
    */
  }
};
