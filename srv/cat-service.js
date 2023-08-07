const cds = require('@sap/cds')
module.exports = async function (){

  const db = await cds.connect.to('db') // connect to database service
  const { Books } = db.entities         // get reflected definitions

  // Reduce stock of ordered books if available stock suffices
  this.on ('submitOrder', async req => {
    const {book,quantity} = req.data
    const n = await UPDATE (Books, book)
      .with ({ stock: {'-=': quantity }})
      .where ({ stock: {'>=': quantity }})
    n > 0 || req.error (409,`${quantity} exceeds stock for book #${book}`)
  })

  // Add some discount for overstocked books
  this.after ('READ','Books', each => {
    if (each.stock >= 100) {
      each.discount = `20% off`
      each.price *= 0.8
    } else if (each.stock >= 50 && each.stock <= 99) {
      each.discount = `15% off`
      each.price *= 0.85
    }
    else if (each.stock >= 20 && each.stock <= 49) {
      each.discount = `10% off`
      each.price *= 0.9
    }
  })
}