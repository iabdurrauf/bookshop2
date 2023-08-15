//@ui5-bundle sap/capire/bookshop/browsecatalog/Component-preload.js
jQuery.sap.registerPreloadedModules({
"version":"2.0",
"modules":{
	"sap/capire/bookshop/browsecatalog/Component.js":function(){sap.ui.define(["sap/fe/core/AppComponent"],function(e){"use strict";return e.extend("sap.capire.bookshop.browsecatalog.Component",{metadata:{manifest:"json"}})});
},
	"sap/capire/bookshop/browsecatalog/i18n/i18n.properties":'# This is the resource bundle for sap.capire.bookshop.browsecatalog\n\n#Texts for manifest.json\n\n#XTIT: Application name\nappTitle=Browse Catalog\n\n#YDES: Application description\nappDescription=Browse Catalog\n\nflpTitle=Browse Catalog\n\nflpSubtitle=\n\n#XFLD,25\nTitle=Title\n\n\n#XCOL: Custom action text\nsubmitOrder=Submit Order\n',
	"sap/capire/bookshop/browsecatalog/manifest.json":'{"_version":"1.49.0","sap.app":{"id":"sap.capire.bookshop.browsecatalog","type":"application","i18n":"i18n/i18n.properties","applicationVersion":{"version":"0.0.1"},"title":"{{appTitle}}","description":"{{appDescription}}","resources":"resources.json","sourceTemplate":{"id":"@sap/generator-fiori:lrop","version":"1.10.3","toolsId":"e4d03818-9de8-46e6-8e7f-b82472b5c363"},"dataSources":{"mainService":{"uri":"browse/","type":"OData","settings":{"annotations":[],"localUri":"localService/metadata.xml","odataVersion":"4.0"}}},"crossNavigation":{"inbounds":{"sap-capire-bookshop-browsecatalog-inbound":{"signature":{"parameters":{},"additionalParameters":"allowed"},"semanticObject":"ZBrowseCatalog","action":"browse","title":"{{flpTitle}}","subTitle":"{{flpSubtitle}}","icon":""}}}},"sap.ui":{"technology":"UI5","icons":{"icon":"","favIcon":"","phone":"","phone@2":"","tablet":"","tablet@2":""},"deviceTypes":{"desktop":true,"tablet":true,"phone":true}},"sap.ui5":{"flexEnabled":true,"dependencies":{"minUI5Version":"1.116.0","libs":{"sap.m":{},"sap.ui.core":{},"sap.ushell":{},"sap.fe.templates":{}}},"contentDensities":{"compact":true,"cozy":true},"models":{"i18n":{"type":"sap.ui.model.resource.ResourceModel","settings":{"bundleName":"sap.capire.bookshop.browsecatalog.i18n.i18n"}},"":{"dataSource":"mainService","preload":true,"settings":{"synchronizationMode":"None","operationMode":"Server","autoExpandSelect":true,"earlyRequests":true}},"@i18n":{"type":"sap.ui.model.resource.ResourceModel","uri":"i18n/i18n.properties"}},"resources":{"css":[]},"routing":{"routes":[{"pattern":":?query:","name":"BooksList","target":"BooksList"},{"pattern":"Books({key}):?query:","name":"BooksObjectPage","target":"BooksObjectPage"}],"targets":{"BooksList":{"type":"Component","id":"BooksList","name":"sap.fe.templates.ListReport","options":{"settings":{"entitySet":"Books","variantManagement":"Page","navigation":{"Books":{"detail":{"route":"BooksObjectPage"}}},"initialLoad":"Enabled","controlConfiguration":{"@com.sap.vocabularies.UI.v1.LineItem":{"columns":{"DataField::title":{"width":"auto"},"DataField::author_name":{"width":"auto"},"DataField::genre":{"width":"auto"},"DataField::stock":{"width":"auto"},"DataField::price":{"width":"auto"},"DataField::discount":{"width":"auto"}}}}}}},"BooksObjectPage":{"type":"Component","id":"BooksObjectPage","name":"sap.fe.templates.ObjectPage","options":{"settings":{"editableHeaderContent":false,"entitySet":"Books"}}}}},"extends":{"extensions":{"sap.ui.controllerExtensions":{}}}},"sap.fiori":{"registrationIds":[],"archeType":"transactional"},"sap.cloud":{"public":true,"service":"bookshop"}}'
}});
