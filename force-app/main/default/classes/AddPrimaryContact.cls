public with sharing class AddPrimaryContact implements Queueable {
    private Contact contact;
    private String state;

    public AddPrimaryContact(Contact aContact, String aState) {
        this.contact = aContact;
        this.state = aState;
    }

    public void execute(QueueableContext context) {
        List<Contact> insertContacts = new List<Contact>();

        for (Account tmpAcct : [SELECT Id FROM Account WHERE BillingState  = :this.state LIMIT 200]) {
            Contact cloneContact = this.contact.clone();
            cloneContact.AccountId = tmpAcct.Id;
            insertContacts.add(cloneContact);
        }
        insert insertContacts;
    }
}
