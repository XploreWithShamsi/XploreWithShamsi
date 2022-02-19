trigger trgLead on Lead (before insert) {
    if(Trigger.isBefore && Trigger.isInsert){
        clsLeadBusinessLogic.preventDuplicateLeads(Trigger.new);
    }
   
}