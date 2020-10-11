@isTest
private class ScannerExampleTest 
{
    @isTest
    static void TestWithSOQL()
    {
        Contact cont=new Contact(FirstName='Keir', LastName='Bowden');
        insert cont;

        List<Contact> contsFromDB=[select id from Contact where id=:cont];
        System.assert(1, contsFromDB.size(), 'Should find the contact just added');
    }

    static void NotTestWithSOQL()
    {
        Contact cont=new Contact(FirstName='Keir', LastName='Bowden');
        insert cont;

        List<Contact> contsFromDB=[select id from Contact where id=:cont];
    }
}
