trigger fechaOppor on Opportunity (before update) {

   

    List<Opportunity> opp = (trigger.new);

   

    for(Opportunity opport: opp){

      

        if(opport.StageName == 'Closed Won'){

           

            if(fechasDisponibles.verificacionVehiculo(opport)){

               

                opport.addError('No es posible seleccionar el vehiculo deseado');

               

            }

           

        }

               

    } 

   

}