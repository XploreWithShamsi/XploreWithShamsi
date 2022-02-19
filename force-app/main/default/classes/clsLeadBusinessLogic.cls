public with sharing class clsLeadBusinessLogic {
    public clsLeadBusinessLogic() {

    }

    public static void preventDuplicateLeads(List<Lead> newLeads)
    {
        //Enter Logic here test
    }

    public static void modifyContactWithLeadInformations(List<Lead> newLeads)
    {
        map<string,contact> mapOfCont=new map<string,contact>();
        list<Contact>lstOfCont=[SELECT id,Email FROM Contact];
        list<contact> lstFinalContacts = new List<Contact>();
        for(Contact c:lstOfCont){
            mapOfCont.put(c.Email,c);
        }

        for(Lead l:newLeads){
            if(l.Email<>null||string.isNotBlank(l.Email)){
                system.debug('@@class if chek is working');
                if(mapOfCont.containskey(l.Email)){
                    Contact c = new Contact();
                    c.id = mapOfCont.get(l.email).id;
                    c.FirstName = l.FirstName;
                    c.LastName = l.LastName;
                    c.Email = l.Email;
                    c.Phone = l.MobilePhone;
                    lstFinalContacts.add(c);
                    
                }
            }
        }
      update lstFinalContacts;
    }
}
