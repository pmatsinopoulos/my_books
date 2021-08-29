## Task A

You need to finish the `blog` polishing. You need to apply all the things you have learned so far at all parts of the code.

You will have to enhance the following points, at least:

1. The `update` action of Articles controller. Use the `Article#update` ActiveRecord method and the `article_params` method 
that you have already created. The `Article#update` takes as input a `Hash` with the attributes/values to update. 
1. Make sure that the `update` action handles the errors. `Article#update` will return `false` if something goes wrong.
1. `update` needs to redirect back to `edit_article_path`, in case of success. It needs to display an alert that update
has been carried out successfully.
1. Change the `edit` view template to use Rails form helper methods. Note that the `form_for` needs to define the correct
`method` value for the submission of an update.
1. When `update` fails it needs to display an alert with the errors.
1. Change the `destroy` action to redirect to the list of articles, if destroy succeeds. Also, it needs to display an alert that the destroy succeeded.
1. Make sure that all the anchors are built using the `link_to` method.

Make any other improvement you see fit.

**Important** Push your work to your Github account and to your production Heroku server.

## Task B

In the previous chapter you have started implementing an e-shop. Apply all the things that you have learned in this chapter to this
project.

**Important** Push your work to your Github account and to your production Heroku server.


