public with sharing class alert {

    @AuraEnabled(cacheable=true)

    public static List<Factura__c> getFactura(string idObject) {    

    list <Factura__c> factura = new list<Factura__c>();

    for (Factura__c fc :[SELECT Factura_Pagada__c FROM Factura__c WHERE Account__c =:idObject]) {

    factura.add(fc);

    }

    system.debug(factura);

   

    return factura;

    }

    }