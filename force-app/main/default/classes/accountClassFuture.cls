global class accountClassFuture 
{
    @future
    public static void myFuture(String IdCliente)
    {
        list<Messaging.SingleEmailMessage> mess = new List<Messaging.SingleEmailMessage>();
<<<<<<< HEAD
        String[] toAddresses = new String[] {'sergio.baca@me.com'}; 
        
        for(Account Acclist : (List<Account>) JSON.deserialize(IdCliente, List<Account>.class))
        {
=======
        String[] toAddresses = new String[] {'jpostigo@powersolution.com.ar'}; 

        
        for(Account Acclist : (List<Account>) JSON.deserialize(IdCliente, List<Account>.class))
        {

           if (Acclist.Id != null)  {

>>>>>>> 843ce3728f867780442ccbfb660f3a078525584e
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            mail.setToAddresses(toAddresses);
            mail.setSubject('Hola Sergio, se creo el cliente '+Acclist.name);
            mail.setPlainTextBody('Me gusta apex por facil');
            mess.add(mail);
        }
<<<<<<< HEAD
        Messaging.sendEmail( mess);
=======

        }

        Messaging.sendEmail(mess);
>>>>>>> 843ce3728f867780442ccbfb660f3a078525584e
    }
}
