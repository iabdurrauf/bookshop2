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
        },
        {
            $Type : 'UI.DataField',
            Value : price,
            Label : '{i18n>Price}',
        },
        {
            $Type : 'UI.DataField',
            Value : currency_code,
        },
    ]
);
annotate service.Books with @(
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>BookInformation}',
            ID : 'i18nBookInformation',
            Target : '@UI.FieldGroup#i18nBookInformation',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>AuthorInformation}',
            ID : 'i18nAuthorInformation',
            Target : '@UI.FieldGroup#i18nAuthorInformation',
        },
    ],
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
