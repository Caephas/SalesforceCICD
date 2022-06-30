@isTest(seeAllData=false)
public class CreateDataTest {

    @isTest
    public static void testData(){
        Test.startTest();
        CreateData.createPackageData();
        // System.assert(false, 'asdfghjkl;/');
        Test.stopTest();
    }
}