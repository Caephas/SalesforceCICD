@isTest
private class SpoonacularTest{
    private class Spoonacular_HCM_TGN_TEST implements HttpCalloutMock{
        protected Integer code;
        protected String status;
        protected String body;
        protected Map<String,String> headers;
        public Spoonacular_HCM_TGN_TEST(Integer code,String status,String body,Map<String,String> headers){
            this.code=code;
            this.status=status;
            this.body=body;
            this.headers=headers;
        }
        public HTTPResponse respond(HTTPRequest req){
            HttpResponse res=new HttpResponse();
            res.setStatusCode(this.code);
            res.setStatus(this.status);
            res.setBody(this.body);
            if(this.headers!=null){
                for(String key:this.headers.keySet()){
                    res.setHeader(key,this.headers.get(key));
                }
            }
            return res;
        }
    }
    @isTest
    private static void getRandomRecipe_TGN_TEST(){
        Test.startTest();
        Spoonacular_HCM_TGN_TEST httpMock;
        httpMock=new Spoonacular_HCM_TGN_TEST(200,'Complete','{}',null);
        Test.setMock(HttpCalloutMock.class,httpMock);
        Spoonacular.getRandomRecipe();
        Test.stopTest();
    }
    @isTest
    private static void getRecipe_TGN_TEST(){
        Test.startTest();
        Spoonacular_HCM_TGN_TEST httpMock;
        httpMock=new Spoonacular_HCM_TGN_TEST(200,'Complete','{}',null);
        Test.setMock(HttpCalloutMock.class,httpMock);
        Spoonacular.getRecipe('a');
        Spoonacular.getRecipe(null);
        Test.stopTest();
    }
    //@isTest
    // private static void getRecipeByIngredients_TGN_TEST(){
    //     Test.startTest();
    //     Spoonacular_HCM_TGN_TEST httpMock;
    //     httpMock=new Spoonacular_HCM_TGN_TEST(200,'Complete','{}',null);
    //     Test.setMock(HttpCalloutMock.class,httpMock);
    //     Spoonacular.getRecipeByIngredients('a');
    //     Spoonacular.getRecipeByIngredients(null);
    //     Test.stopTest();
    // }
    @isTest
    private static void Spoonacular_TGN_TEST(){
        Spoonacular obj = new Spoonacular();
    }
}