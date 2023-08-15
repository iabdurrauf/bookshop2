using CatalogService as service from '../../srv/cat-service';

annotate service.Books with {
    title       @Common.Label        : '{i18n>Title}';
    author_name @Common.Label        : '{i18n>Author}';
    price       @Measures.ISOCurrency: currency_code;
    author      @Common.Text         : {
        $value                : descr,
        ![@UI.TextArrangement]: #TextLast,
    }
};

// List Report Page
annotate service.Books with @(
    UI.SelectionFields: [
        title,
        author_name,
    ],
    Capabilities      : {FilterFunctions: ['tolower']},
    UI.LineItem       : [
        {
            $Type: 'UI.DataField',
            Value: title,
            Label: '{i18n>Title}',
        },
        {
            $Type: 'UI.DataField',
            Value: author_name,
            Label: '{i18n>Author}',
        },
        {
            $Type: 'UI.DataField',
            Value: genre,
            Label: '{i18n>Genre}',
        },
        {
            $Type                    : 'UI.DataField',
            Value                    : stock,
            Label                    : '{i18n>Stock}',
            Criticality              : stock,
            CriticalityRepresentation: #WithIcon,
        },
        {
            $Type: 'UI.DataField',
            Value: price,
            Label: '{i18n>Price}',
        },
        {
            $Type: 'UI.DataField',
            Value: discount,
            Label: '{i18n>Discount}',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action: 'CatalogService.EntityContainer/submitOrder',
            Label : '{i18n>SubmitOrder}',
        },
    ]
);


// Object Page
annotate service.Books with @(
    UI.HeaderInfo                   : {
        TypeName      : '',
        TypeNamePlural: '',
        Title         : {
            $Type: 'UI.DataField',
            Value: title,
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: descr,
        },
    },
    UI.Facets                       : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Book Information',
            ID    : 'BookInformation',
            Target: '@UI.FieldGroup#BookInformation',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Author Information',
            ID    : 'AuthorInformation',
            Target: '@UI.FieldGroup#AuthorInformation',
        },
    ],
    UI.FieldGroup #BookInformation  : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: genre,
                Label: '{i18n>Genre}',
            },
            {
                $Type: 'UI.DataField',
                Value: stock,
                Label: '{i18n>Stock}',
            },
            {
                $Type: 'UI.DataField',
                Value: price,
                Label: '{i18n>Price}',
            },
            {
                $Type: 'UI.DataField',
                Value: discount,
                Label: '{i18n>Discount}',
            },
        ],
    },
    UI.FieldGroup #AuthorInformation: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: author_name,
                Label: '{i18n>Name}',
            },
            {
                $Type: 'UI.DataField',
                Value: author_bio,
                Label: '{i18n>Bio}',
            },
        ],
    }
);


