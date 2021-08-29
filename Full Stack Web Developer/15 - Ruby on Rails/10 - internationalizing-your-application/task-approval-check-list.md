# Task B

Your students needs to localize their `blog` application according to the instructions and guidelines presented in the chapter. They shouldn't 
localize only the parts of the application that are localized within the chapter. They should localize everything that they believe
should be localized. And they can use whatever second language (besides English) that they like.

Indicatively but not limited here:

* You need to make sure they add the correct `.yml` file inside their `config/locales` folder.
* You need to make sure that they configure their application with a new default locale, if this is not going to be English.
* You need to make sure they make all the text that appears on all the views to be using the `I18n.translate` method. Like we did for `List Of Articles`.
* You need to make sure that they use a `before_action` filter that would set the locale using a combined logic:
    1. If the user is logged in, then set the locale based on their locale. 
    1. If the user is not logged in, but the params hash contains the locale, then use whatever the value is specified.
    1. Otherwise, use whatever is specified in the `Accept-Language` request header.
    1. In any other case, use the default locale specified by the `I18n.default_locale`.
* You need to make sure that they configure their routes so that the locale can be an optional part of the URL path, and not only part of the query string parameters.
* You need to make sure that `locale` property on `User` takes values from a limited set of values, by using an `inclusion` validator.
* They should allow the user to select their language using a select box with available/supported languages.
* All flash messages should be localized, like we did for the flash message on deletion of an article. If they can, they should make them have variable parts.
* You need to make sure that the articles index page displays the timestamps of the article creations using localization.
* You need to make sure that their application declares a default time zone inside the `config/application.rb`.
* Their `users` table needs to have the time zone table.
* Their `User` model needs to have validation on time zone so that the time zone takes values from specific set (using `inclusion` validator). 
* They need to create the necessary UI on application layout to have the select box that would allow user to set their time zone.
* They need to create the around filter in order to take user time zone into account.

**Important:** Their code needs to be uploaded to their Github account. Also, their production application instance on Heroku should be updated accordingly.
