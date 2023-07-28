using { sap.capire.bookshop as my } from '../db/schema';
service CatalogService @(path:'/browse') { 

  /** For display in details pages */
  @readonly entity Books as projection on my.Books { *,
    author.name as author_name,
    author.bio as author_bio
  } excluding { createdBy, createdAt, modifiedBy, modifiedAt };

  @requires: 'authenticated-user'
  action submitOrder (book: Books:ID, quantity: Integer);
}