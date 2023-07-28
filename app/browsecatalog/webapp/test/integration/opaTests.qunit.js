sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'sap/capire/bookshop/browsecatalog/test/integration/FirstJourney',
		'sap/capire/bookshop/browsecatalog/test/integration/pages/BooksList',
		'sap/capire/bookshop/browsecatalog/test/integration/pages/BooksObjectPage'
    ],
    function(JourneyRunner, opaJourney, BooksList, BooksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('sap/capire/bookshop/browsecatalog') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBooksList: BooksList,
					onTheBooksObjectPage: BooksObjectPage
                }
            },
            opaJourney.run
        );
    }
);