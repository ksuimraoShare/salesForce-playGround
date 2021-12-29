public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numContacts, String contactLastName) {
      List<Contact> contacts = new List<Contact>();

      for(Integer i=0;i<numContacts;i++){
        Contact tmpContact = new Contact(FirstName = String.valueOf(i), LastName = contactLastName);
        contacts.add(tmpContact);
      }
      
      return contacts;
    }
}
