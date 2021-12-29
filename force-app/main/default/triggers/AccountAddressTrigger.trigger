trigger AccountAddressTrigger on Account (before insert, before update) {

    for (Account tmpAccount : Trigger.New) {
        if(tmpAccount.Match_Billing_Address__c == true){
            tmpAccount.ShippingPostalCode = tmpAccount.BillingPostalCode;
        }
    }
}