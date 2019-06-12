let db = require('./models'); //requires all of our js, in this case it's the user.js

//FINDING ALL
// db.user.findAll() //it's a promise that's doing a select all that will return the results for ".then"
// .then((results) => {
//     results.forEach(record=>{
//         console.log(record.id, record.firstName, record.lastName);
//     })
// })

//FIND ENTRY BY ID
// db.user.findByPk(1) //this is a promise, take it, pass it back to the .then again. This is just one rather than a whole array
// .then((record) => {
//     // console.log(record);
//     console.log(record.lastName, record.firstName);
// })

//CREATING AN ENTRY 
// db.user.create({firstName: 'Draco', lastName: 'Malfoy', email:'dmalfor@hogmail.com'}) //it's a function so we're going to pass an object
// .then((user) => {
//     console.log(user);
// })

let user = db.user; //now we don't have to constantly type db.user

//FINDING AN OBJECT WITH CONDITIONS
// user.findAll({where: {lastName: 'Malfoy'}})
// .then((foundResult) => {
//     foundResult.forEach(record =>{
//         console.log(record.firstName, record.lastName);
//     })
// })

//DELETES A ROW OR ENTRY
// user.destroy({where: {id: 5}}) 
// .then((deleted) => {
//     if(deleted == 1){
//         console.log('Deleted Successfully');
//     } else {
//         console.log('unable to delete');
//     }
// })


//UPDATING AN ENTRY
//retrieve record
//then goes promise and update
// let update;
// user.findByPk(1)
// .then((record) => {
//     update = record;
//     update.email = 'hpotsupdate@hogmail.com'
//     update.save().then((params) => {
//         console.log('update successfully')
//     })
// })


//DIFFERENT VALUES YOU CAN USE TO FIND
// user.findAll({where: {}, include: [], order: [], limit: 2,}) //these are different keyvalue pairs that you can use
//IF YOU ADD OFFSET, SHIFTS THIS DOWN BY OFFSET INTEGER
//ORDER TAKES AN ARRAY WITHIN AN ARRAY
// user.findAll({order: [['lastName', 'ASC']]}) 
// .then((result) => {
//     result.forEach(record =>{
//         console.log(record.firstName, record.lastName);
//     })
// })

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ASSOCIATIONS~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//NEED TO CREATE ANOTHER TABLE
//TO DO THAT YOU NEED TO RUN THE SEQUELIZE GENERATE MODEL COMMAND
    //sequelize model:generate --name (name of file) --attributes title:string(add attributes without space)
//THEN IT SHOULD MAKE A NEW JS FILE IN MODELS
//IN THE JS FILE, ALL THE ASSOCIATIONS CAN BE FOUND UNDER "task.associate"
//EDIT YOUR MIGRATIONS FILE. IE. CREATE-TASKS
//WHICH WE ADDED:
// userId: {
//     type: Sequelize.INTEGER,
//     references: {
//       model: 'users', ////THIS REFERENCES THE USERS TABLE WITH THE KEY OF THEIR ID
//       key: 'id'
//     },
//     allowNull: true
//   }
//THEN RUN MIGRATE
    //sequelize db:migrate


// user.findAll({include: [{model: db.task}]})
// .then((records) => {
//     records.forEach(record=>{
//         console.log(record.firstName, record.lastName);
//         record.tasks.forEach(element=>{
//             console.log(`   >${element.title}`);
//         })
//     })
// })

// user.findAll({include: [{model: db.task, require: false}]})
// .then((records) => {
//     records.forEach(record => {
//         console.log(record.firstName, record.lastName);
//         record.tasks.forEach(element => {
//             console.log(` >${element.title}`);
//         });
//     });
// })

db.task.findAll({include: [{model: db.user, require: false, where: {id: 2}}]})
.then((records) => {
    records.forEach(record=>{
        console.log(record.title, record.user.firstName);
    })
})

//include is an array
    //you can put other key value pairs in it
