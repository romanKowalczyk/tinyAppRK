const cds = require('@sap/cds');
const { Books, Authors } = cds.entities;

const newAuthors = [{
    id: 42, name: "Douglas Adams" },{
    id: 101, name: "Emily Bronte"
}];
const newBooks = [{
    title: "The Hitch Hiker's Guide To The Galaxy", author_ID: 42, stock: 1000},{
    title: "Life, The Universe And Everything", author_ID: 42, stock: 95},{
    title: "Wuthering Heights", author_ID: 101, stock: 12}];
  
  cds.run(INSERT.into(Authors).entries(newAuthors));
  cds.run(INSERT.into(Books).entries(newBooks));
