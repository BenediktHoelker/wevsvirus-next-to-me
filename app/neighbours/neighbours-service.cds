using {NeighboursService as my} from '../../srv/neighbours-service';

annotate my.Neighbours with @(UI : {
    HeaderInfo          : {
        TypeName       : 'Nachbar',
        TypeNamePlural : 'Nachbarn',
        Title          : {Value : name}
    },
    Identification      : [{Value : name}],
    SelectionFields     : [name],
    LineItem            : [{Value : name}],
    Facets              : [
    {
        $Type  : 'UI.ReferenceFacet',
        Label  : 'Infos',
        Target : '@UI.FieldGroup#General'
    },
    {
        $Type  : 'UI.ReferenceFacet',
        Label  : 'Posting',
        Target : 'postings/@UI.LineItem'
    }
    ],
    FieldGroup #General : {Data : [{Value : name}]}
});

annotate my.Postings with @(UI : {
    HeaderInfo          : {
        TypeName       : 'Post',
        TypeNamePlural : 'Posts',
        Title          : {Value : title}
    },
    Facets              : [
    {
        $Type  : 'UI.ReferenceFacet',
        Label  : 'Infos',
        Target : '@UI.FieldGroup#General'
    },
    {
        $Type  : 'UI.ReferenceFacet',
        Label  : 'Items',
        Target : 'items/@UI.LineItem'
    }
    ],
    LineItem            : [
    {Value : title},
    {Value : description}
    ],
    FieldGroup #General : {Data : [
    {Value : title},
    {Value : description}
    ]}
});
