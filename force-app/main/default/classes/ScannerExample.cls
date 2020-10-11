public with sharing class ScannerExample 
{
    public List<Contact> getContacts()
    {
        return [select id from Contact];
    }

    public List<Contact> getContactsViaDatabaseQuery()
    {
        return Database.query('select id from Contact');
    }
}
