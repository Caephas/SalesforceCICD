@isTest(seeAllData=false)
public class CreateDataTest {

    @isTest
    public static void testData(){
        Test.startTest();
        CreateData.createPackageData();
        // System.debug('o');
        System.assert(false, 'asdfghjkl;/');
        Test.stopTest();
    }
}