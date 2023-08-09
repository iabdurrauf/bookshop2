using { Currency, managed, sap } from '@sap/cds/common';
using { CE_PRODUCT_0002 as external_api } from '../srv/external/CE_PRODUCT_0002';

namespace sap.capire.bookshop; 

entity Books : managed { 
  key ID : Integer;
  title  : localized String(111);
  descr  : localized String(1111);
  author : Association to Authors;
  genre  : String;
  stock  : Integer;
  price  : Decimal(9,2);
  currency : Currency;
  discount : String(111);
}

entity Authors : managed { 
  key ID : Integer;
  name   : String(111);
  bio  : String(1111);
  books  : Association to many Books on books.author = $self;
}

// add title filter
// make title filter case insensitive