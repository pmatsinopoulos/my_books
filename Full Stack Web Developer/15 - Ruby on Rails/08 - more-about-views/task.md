# Task A - Quiz

### Question #1 - We are in controller `Batch` and in its action `do_it`. There is no `render` call. Which view will be rendered?

*Select One*

1. `app/views/layouts/do_it.html.haml`
1. `app/views/layouts/batch/do_it.html.haml`
1. `app/views/batch/do_it.html.haml`
1. `app/views/do_it.html.haml`

### Question #2 - We are in controller `Batch` and in its action `do_it`. There is a call to `render :beautiful`. Which view will be rendered?

*Select One*

1. `app/views/batch/do_it.html.haml`
1. `app/views/beautiful.html.haml`
1. `app/views/batch/layout/beautiful.html.haml`
1. `app/views/batch/beautiful.html.haml`

### Question #3 - We are in controller `Batch` and in its action `do_it`. There is a call to `render 'on_demand/index'`. Which view will be rendered?

*Select One*

1. `app/views/on_demand/index.html.haml`
1. `app/views/on_demand/do_it.html.haml`
1. `app/views/batch/index.html.haml`
1. `app/views/batch/do_it.html.haml`

### Question #4 - Fill in the following so that it renders plain text `'Hello World!'`:
 
*Fill In The Blanks*

``` ruby
def foo
____________________________________
end
```

### Question #5 - Fill in the following so that the response is in JSON format. The resource to render is `@book`

*Fill In The Blanks*

``` ruby
def foo
___________________________________
end
```

### Question #6 - We are in `Batch` controller and its action `do_it`. Render view `:index` with status code 422 using the corresponding symbol:

*Fill In The Blanks*

``` ruby
def do_it
_________________________________
end
```

### Question #7 - Set the layout to be `fancy_layout` for the controller `Batch`:

*Fill In The Blanks*

``` ruby
class BatchController < ApplicationRecord
____________________________________________________
end
```

### Question #8 - Which helper is used for referencing stylesheets?

*Fill In The Blanks*

``` ruby
__________________________________
```

### Question #9 - Which helper is used for referencing JavaScript?

*Fill In The Blanks*

``` ruby
__________________________________
```

### Question #10 - Which helper is used to reference images?

*Fill In The Blanks*

``` ruby
__________________________________
```

### Question #11 - Which helper is used to reference videos?

*Fill In The Blanks*

``` ruby
__________________________________
```

### Question #12 - Which helper is used to reference audios?

*Fill In The Blanks*

``` ruby
_________________________________
```

### Question #13 - Which statement is used, in the layout, to define the point at which a view is embedded?

*Fill In The Blanks*

``` ruby
_________________________________
```

### Question #14 - Which statement is used, in the layout, to define the point at which the content for `:side_bar` is embedded?

*Fill In The Blanks*

``` ruby
_________________________________
```

### Question #15 - A partial cannot have its own layout?

*True/False*

1. True
1. False

### Question #16 - Which helper is used to generate a checkbox?

*Fill In The Blanks*

``` ruby
__________________________________
```

### Question #17 - Which helper is used to generate a radio button?

*Fill In The Blanks*

``` ruby
__________________________________
```

### Question #18 - Which helper is used to generate a text area?

*Fill In The Blanks*

``` ruby
__________________________________
```

### Question #19 - Which helper is used to generate a password field?

*Fill In The Blanks*

``` ruby
__________________________________
```

### Question #20 - Which helper is used to generate a hidden field?

*Fill In The Blanks*

``` ruby
__________________________________
```

### Question #21 - Which helper is used to generate a search field?

*Fill In The Blanks*

``` ruby
__________________________________
```

### Question #22 - Which helper is used to generate a telephone field?

*Fill In The Blanks*

``` ruby
___________________________________
```

### Question #23 - Which helper is used to generate a date field?

*Fill In The Blanks*

``` ruby
___________________________________
```

### Question #24 - Which helper is used to generate an email field?

*Fill In The Blanks*

``` ruby
___________________________________
```

### Question #25 - The Author association below is optional
``` ruby
class Book < ApplicationRecord
  belongs_to :author
...
end
```

*True/False*
  
1. True
1. False  

# Task B

You need to make sure that you implement in your `blog` application whatever is described in the chapter content. In particular:

1. You need to implement the action `foo` inside the `ArticlesController` that would render the `index` view of the `welcome` controller.
1. You need to implement the action `bar` inside the `ArticlesController` that would render text. Render whatever text you want.
1. You need to make sure that your controllers return meaningful status response codes.
    1. `ArticlesController` to return 422 when `create` fails.
    1. The `update` action of `ArticlesController`. When the update is invalid, then you should render with status code `422`.
    1. The `create` action of `SignInController`. When it fails to sign in the user, then it should render with status code `401` (or `403`).
    1. The `create` action of `SignUpController`. When it fails to sign up a user, then it should render with status code `422` (or `401`, or `403`).
1. Add the `pencil.png` in the edit page of an Article.
1. Add the `yield :menu` and `content_for` inside the `index` for Articles.
1. Use the collection `@articles` in the `Articles` `index` page to render the partial for each Article.
1. Add the search form inside the application layout and amend the `index` action to take care of the search.
1. On the Sign Up Form select the country the user is coming from using a select box. Country model should be used.
    1. Create and run the migration for countries.
    1. Create and run the migration for users.
    1. Create model for Country.
    1. Amend model for User,
    1. Make sure the `belongs_to` on `User` for `Country` is optional.
    1. Create the Feature/Scenario that would test the sign up with Country of Origin set.
   
**Important:** Your code needs to be uploaded to your Github account. And your application needs to be deployed to your production Heroku instance.
