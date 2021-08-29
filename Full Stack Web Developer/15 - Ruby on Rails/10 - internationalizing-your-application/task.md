{% quiz %}

# Task B

You need to localize your `blog` application according to the instructions and guidelines presented in the chapter. Don't 
localize only the parts of the application that are localized within the chapter. Localize everything that you believe
should be localized. And use whatever second language (besides English) that you like.

Indicatively but not limited here:

* Make sure you add the correct `.yml` file inside your `config/locales` folder.
* Make sure that you configure your application with a new default locale, if this is not going to be English.
* Make all the text that appears on all the views to be using the `I18n.translate` method. Like we did for `List Of Articles`.
* Make sure that you use a `before_action` filter that would set the locale using a combined logic:
    1. If the user is logged in, then set the locale based on their locale. 
    1. If the user is not logged in, but the params hash contains the locale, then use whatever the value is specified.
    1. Otherwise, use whatever is specified in the `Accept-Language` request header.
    1. In any other case, use the default locale specified by the `I18n.default_locale`.
* You need to configure your routes so that the locale can be an optional part of the URL path, and not only part of the query string parameters.
* Make sure that `locale` property on `User` takes values from a limited set of values, by using an `inclusion` validator.
* Allow the user to select their language using a select box with available/supported languages.
* All flash messages should be localized, like we did for the flash message on deletion of an article. If you can, make them having variable parts.
* Make sure that the articles index page displays the timestamps of the article creations using localization.
* Make sure that you application declares a default time zone inside the `config/application.rb`.
* Your `users` table needs to have the time zone table.
* Your `User` model needs to have validation on time zone so that the time zone takes values from specific set (using `inclusion` validator). 
* Create the necessary UI on application layout to have the select box that would allow user to set their time zone.
* Create the around filter in order to take user time zone into account.

**Important:** Your code needs to be uploaded to your Github account. Also, your production application instance on Heroku should be updated accordingly.
