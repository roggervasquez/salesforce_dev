trigger ForceForecasting on User (before insert) {
    for (User currentUser : Trigger.new) {
        currentUser.ForecastEnabled= true;
    }
}