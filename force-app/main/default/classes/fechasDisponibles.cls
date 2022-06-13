public class fechasDisponibles {
    
    
    
    public static Boolean verificacionVehiculo(Opportunity o){
        
        Boolean respuesta = false;
        
        List <Opportunity> listaO = [SELECT Id, Name, StageName, Fecha_de_Inicio_del_Servicio__c, Fecha_de_Finalizacion_del_Servicio__c, Vehiculo__r.Id,
                                     Vehiculo__r.Name FROM Opportunity WHERE StageName = 'Closed Won'];
        
        
        
        for(Opportunity op: listaO){
            if(op.Vehiculo__c == o.Vehiculo__c){
                if ((op.Fecha_de_Inicio_del_Servicio__c <= o.Fecha_de_Inicio_del_Servicio__c && op.Fecha_de_Finalizacion_del_Servicio__c >= o.Fecha_de_Inicio_del_Servicio__c ) ||
                    (op.Fecha_de_Inicio_del_Servicio__c <= o.Fecha_de_Finalizacion_del_Servicio__c && op.Fecha_de_Finalizacion_del_Servicio__c >= o.Fecha_de_Finalizacion_del_Servicio__c)) {
                        
                        respuesta = true;
                        
                        return respuesta;
                        
                    }
            }
            
            
            
        }
        
        return respuesta;
        
        
        
        
    }
    
    
    
}