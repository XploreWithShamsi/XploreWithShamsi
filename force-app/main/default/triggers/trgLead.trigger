trigger trgLead on Lead (before insert) {
 //comment test
    if(Trigger.isBefore && Trigger.isInsert){
        clsLeadBusinessLogic.preventDuplicateLeads(Trigger.new);
    }
   
}