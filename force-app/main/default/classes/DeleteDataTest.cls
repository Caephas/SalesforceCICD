@isTest(seeAllData=true)
public class DeleteDataTest {

    @isTest
    public static void deleteData(){
        DeleteData.deleteData();
        // System.debug('testing warnings');
        System.assert(false, 'asdfghjkl;/');
    }
}