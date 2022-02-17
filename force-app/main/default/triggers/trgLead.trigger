trigger trgLead on Lead (before insert) {
 //comment
    if(Trigger.isBefore && Trigger.isInsert){
        clsLeadBusinessLogic.preventDuplicateLeads(Trigger.new);
    }
    else if(Trigger.isAfter && Trigger.isInsert){
        clsLeadBusinessLogic.modifyContactWithLeadInformations(Trigger.new);
    }
}