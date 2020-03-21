using {NextToMeService as my} from './nextToMe-service';

service NeighboursService {
    @odata.draft.enabled
    entity Neighbours as projection on my.Neighbours;

    entity Postings   as projection on my.Postings;
    entity Items      as projection on my.Items;
    entity Addresses  as projection on my.Addresses;
}
