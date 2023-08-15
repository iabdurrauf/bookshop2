using {sap.capire.bookshop as my} from '../db/schema';

service CatalogService @(path: '/browse') {

  /**
   * For display in details pages
   */
   // add edit button without drafting
   // any changes will save directly into the table
  entity Books as projection on my.Books {
    *,
    author.name as author_name,
    author.bio  as author_bio
  } excluding {
    createdBy,
    createdAt,
    modifiedBy,
    modifiedAt
  };

  @requires: 'authenticated-user'
  action submitOrder(Book : Books:ID, Stock : Integer);
}


