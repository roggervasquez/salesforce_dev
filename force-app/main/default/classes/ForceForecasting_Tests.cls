@isTest
public class ForceForecasting_Tests {
  
    @isTest
    static void testForecastTrigger () {
        //Arrange
        
        Profile profileStandard = [ Select Id, name from Profile where name ='Standard User'][0];
        
        User u = new User (
            FirstName ='Rogger',
            LastName ='Vasquez',
            Email = 'rogger@something.com',
            Username = 'rogger@something.com',
            Alias = 'dddd'    ,
            ProfileId = profileStandard.Id,
            TimeZoneSidKey ='America/Denver',
            LocaleSidKey ='en_US', 
            EmailEncodingKey ='UTF-8', 
            LanguageLocaleKey ='en_US'
        );
        Test.startTest();
        Insert u;
        Test.stopTest();
        System.assertEquals(false, u.ForecastEnabled);
       
        
    }
    
}