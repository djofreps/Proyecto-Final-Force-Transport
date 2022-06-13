trigger sumaTrigger on Suma__c (before insert) {

    for(Suma__c sum : trigger.new){

        sum.Resultado__c = sum.Numero1__c + sum.Numero2__c;
    
    }

}