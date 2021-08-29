Make sure that you have all the things that the chapters teaches you incorporated into your `blog` application.
Since the chapter content didn't cover for all tests that one could write for the `blog` application, make sure that
you do the following as well:

1. Write the following tests for the `User` model:

 ```
 test 'cannot have an email that is already used' do
   
 end
 
 test 'cannot have an email that is already used even with different case' do
   
 end
 
 test 'user has email confirmed if there is no email confirmation token' do
   
 end
 
 test 'user does not have email confirmed if there is email confirmation token' do
   
 end
 
 test 'user can write an Article if it is their own Article' do
   
 end
 
 test 'user cannot write an Article if it is not their own Article' do
   
 end
 ```
1. `RSpec`: The above tests need to be amended inside the `spec/models/user_spec.rb` file too.
1. `Cucumber`: The above tests need to be amended inside the file `features/models/user/user_validation_rules.feature`.
1. Write tests for the model 'SignIn'. Cover for email presence, password presence and the authenticate functionality.
1. You need to write 'SignIn' tests in `RSpec` too.
1. You need to write `SignIn` tests in `Cucumber` too.
1. You need to write `Article` model tests. Cover for user presence, title presence and text presence.
1. You need to write `Article` model tests in `Rspec` too.
1. You need to write `Article` model tests in `Cucumber` too.
1. Write system tests for the feature of creating a new Article. Tests should be written inside `features/system/articles_new.feature` file
using `Cucumber`. We expect you to write two scenarios:
    1. User that is not signed in cannot create an Article
    1. User that is signed in can create an Article
1. Write system tests for the feature of editing an existing Article. Tests should be written inside `features/system/articles_edit.feature` file
using `Cucumber`. We expect you to write the following scenarios:
    1. User that is not signed in cannot edit an Article
    1. User that is signed in cannot edit the Article of another User
    1. User can edit their own Article

Hints:

1. When you want to see what errors an attribute has, use the `puts` command to print the `.errors` hash. E.g.
`puts user.errors[:email].inspect` will print the errors `user` instance might have on the `email` attribute.
1. Learn how to create Factory Girl associations. You will find it useful to create the `:article` factory. Factory Girl
associations [are explained here](http://www.rubydoc.info/gems/factory_girl/file/GETTING_STARTED.md) (look for the section `Associations`).
1. `page.current_path` returns the current path your system test is on.
1. `Article.last` returns the last `Article` created.
