const cds = require('@sap/cds')
module.exports = async function (){

  const db = await cds.connect.to('db') // connect to database service
  const { Books } = db.entities         // get reflected definitions

  this.on('addStock', async req => {
    const { book, stock } = req.data
    await UPDATE(Books, book)
      .with({ stock: { '+=': stock } })
  })

}