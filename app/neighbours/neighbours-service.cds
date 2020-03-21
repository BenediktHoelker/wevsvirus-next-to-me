using {NeighboursService as my} from '../../srv/neighbours-service';

annotate my.Neighbours with @(UI : {
    HeaderInfo      : {
        TypeName       : 'Nachbar',
        TypeNamePlural : 'Nachbarn',
        Title          : {Value : name}
    },
    Identification  : [{Value : name}],
    SelectionFields : [name],
    LineItem        : [{Value : name}]
});
