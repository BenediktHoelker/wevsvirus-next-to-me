using {NextToMeService as my} from '../srv/nextToMe-service';

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


annotate my.Items with @(UI : {
    HeaderInfo          : {
        TypeName       : 'Position',
        TypeNamePlural : 'Positionen',
        Title          : {Value : item}
    },
    Facets              : [{
        $Type  : 'UI.ReferenceFacet',
        Label  : 'Infos',
        Target : '@UI.FieldGroup#General'
    }],
    LineItem            : [
    {Value : item},
    {Value : quantity}
    ],
    FieldGroup #General : {Data : [
    {Value : item},
    {Value : quantity}
    ]}
});
