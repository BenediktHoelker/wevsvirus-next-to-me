namespace weVsVirus.nextToMe;

using {
    cuid,
    managed
} from '@sap/cds/common';

entity Neighbours : cuid, managed {
    name     : String @title : 'Name';
    address  : Association to one Addresses;
    postings : Composition of many Postings
                   on postings.owner = $self;
}

entity Addresses : cuid, managed {
    name       : String  @title : 'Name';
    street     : String  @title : 'Straße';
    postalCode : String  @title : 'PLZ';
    city       : String  @title : 'Stadt';
    radius     : Integer @title : 'Radius';
    neighbours : Association to many Neighbours
                     on neighbours.address = $self;
}

entity Postings : cuid, managed {
    title       : String @title : 'Titel';
    description : String @title : 'Beschreibung';
    owner       : Association to one Neighbours;
    items       : Association to many Items
                      on items.posting = $self;
}

entity Items : cuid, managed {
    item     : String  @title : 'Was?';
    quantity : Integer @title : 'Welche Menge?';
    posting  : Association to one Postings;
}
