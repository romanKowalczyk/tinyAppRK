annotate MyService.Books with @(
    UI: {
        Identification: [ {Value: title} ],
        SelectionFields: [ title ],
        LineItem: [
            {Value: ID},
            {Value: title},
            {Value: author.name},
            {Value: author_ID},
            {Value: stock}       
        ],
        HeaderInfo: {
            TypeName: '{i18n>Book}',
            TypeNamePlural: '{i18n>Books}',
            Title: {Value: title},
            Description: {Value. author.name}            
        }
    }
);

annotate MyService.Books with{
    ID @title: '{i18n>ID}' @UI.HiddenFilter;
    title @title: '{i18n>Title}';
    author @title: '{i18n>Author ID}';
    stock @title: '{i18n>Stock}';
};

annotate MyService.Authors with {
    ID @title: '{i18n>ID}' @UI.HiddenFilter;
    name @title: '{i18n>Author Name}';
}