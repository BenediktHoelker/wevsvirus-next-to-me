namespace weVsVirus.nextToMe;

using {
    cuid,
    managed
} from '@sap/cds/common';

entity Neighbours : cuid, managed {
    name    : String;
    address : Association to one Addresses;
}

entity Addresses : cuid {
    name       : String;
    street     : String;
    postalCode : String;
    city       : String;
    radius     : Integer;
    neighbours : Association to many Addresses;
}

entity Postings : cuid {
    items : Association to many Items;
}

entity Items : cuid, managed {
    item     : String;
    quantity : Integer;
    unit     : String;
    posting  : Association to one Postings;
}
