using CatalogService as service from '../../srv/cat-service';

annotate service.Books with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : title,
            Label : '{i18n>Title}',
        },
        {
            $Type : 'UI.DataField',
            Value : author_name,
            Label : '{i18n>Author}',
        },
        {
            $Type : 'UI.DataField',
            Value : genre,
            Label : '{i18n>Genre}',
        },
        {
            $Type : 'UI.DataField',
            Value : stock,
            Label : '{i18n>Stock}',
            Criticality : stock,
            CriticalityRepresentation : #WithIcon,
        },
        {
            $Type : 'UI.DataField',
            Value : price,
            Label : '{i18n>Price}',
        },
        {
            $Type : 'UI.DataField',
            Value : discount,
            Label : '{i18n>Discount}',
        },
    ]
);
annotate service.Books with @(
    UI.HeaderFacets : [],
    UI.FieldGroup #i18nBookInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : title,
                Label : '{i18n>Title}',
            },{
                $Type : 'UI.DataField',
                Value : descr,
                Label : '{i18n>Descr}',
            },{
                $Type : 'UI.DataField',
                Value : genre,
                Label : '{i18n>Genre}',
            },{
                $Type : 'UI.DataField',
                Value : stock,
                Label : '{i18n>Stock}',
            },{
                $Type : 'UI.DataField',
                Value : price,
                Label : '{i18n>Price}',
            },{
                $Type : 'UI.DataField',
                Value : currency_code,
            },],
    }
);
annotate service.Books with @(
    UI.FieldGroup #i18nAuthorInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : author_name,
                Label : '{i18n>Name}',
            },
            {
                $Type : 'UI.DataField',
                Value : author_bio,
                Label : '{i18n>Bio}',
            },],
    }
);
annotate service.Books with {
    author @Common.Text : {
            $value : descr,
            ![@UI.TextArrangement] : #TextLast,
        }
};
annotate service.Books with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Book Information',
            ID : 'BookInformation',
            Target : '@UI.FieldGroup#BookInformation',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Author Information',
            ID : 'AuthorInformation',
            Target : '@UI.FieldGroup#AuthorInformation',
        },
    ],
    UI.FieldGroup #BookInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : genre,
                Label : '{i18n>Genre}',
            },{
                $Type : 'UI.DataField',
                Value : stock,
                Label : '{i18n>Stock}',
            },{
                $Type : 'UI.DataField',
                Value : price,
                Label : '{i18n>Price}',
            },
            {
                $Type : 'UI.DataField',
                Value : discount,
                Label : '{i18n>Discount}',
            },],
    }
);
annotate service.Books with @(
    UI.HeaderInfo : {
        TypeName : '',
        TypeNamePlural : '',
        Title : {
            $Type : 'UI.DataField',
            Value : title,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : descr,
        },
    }
);

annotate service.Books with {
    price @Measures.ISOCurrency : currency_code
};
annotate service.Books with @(
    UI.FieldGroup #AuthorInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : author_name,
                Label : '{i18n>Name}',
            },{
                $Type : 'UI.DataField',
                Value : author_bio,
                Label : '{i18n>Bio}',
            },],
    }
);
annotate service.Books with @(
    UI.SelectionFields : [
        title,
    ],
    Capabilities.FilterFunctions : [
        'tolower'
    ]    
);

annotate service.Books with {
    title @Common.Label : 'title'
};
