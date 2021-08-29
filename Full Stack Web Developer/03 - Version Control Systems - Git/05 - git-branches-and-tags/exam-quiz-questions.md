Please, answer the following questions:

## Question #1 - Usually, when we start developing a new feature, we start a new branch

*True/False*

1. True
2. False

## Question #2 - Give the command to create the new branch with name `feature-view-order-online`.

*Fill In The Blanks*

``` bash
_____________________________________________________
```

## Question #3 - On `gitk`, the current branch is displayed with normal font weight, whereas the others are displayed with bold font weight.

*True/False*

1. True
2. False

## Question #4 - How do we switch back to existing branch `feature-email-notifications`?

*Fill In The Blanks*

``` bash
______________________________________________________
```

## Question #5 - What is the command that lists the branches of my project?

*Fill In The Blanks*

``` bash
______________________________________________________
```

## Question #6 - I am on the `feature-email-notifications` branch and I want to merge my work into `master` branch. What do I do?

*Fill In The Blanks*

``` bash
_____________________________________________________
_____________________________________________________
```

## Question #7 - I am on the `feature-email-notifications` branch and I want to merge my work into `master` branch and keep visual history of the commits that contributed to my feature work. What do I do?
 
*Fill In The Blanks*
 
``` bash
_____________________________________________________
_____________________________________________________
```

## Question #8 - The `git merge` command always does fast-forward merge.

*True/False*

1. True
2. False

## Question #9 - What are the tags?

*Multiple Choice*

1. Tags are labels that we can attach to branches.
2. Tags are labels that we can insert into the source code.
3. Tags are descriptive names that we can attach to commits.
4. Tags are bookmarks in our source code that we can use to locate specific points very quickly.

## Question #10 - Which command returns the list of all the tags in our project?

*Fill In The Blanks*

``` bash
__________________________________
```

## Question #11 - How do we merge changes that have occurred in the `master` branch while we are working on the `feature-billing` branch? Assume that the current branch is `feature-billing`.

``` bash
__________________________________
```

## Question #12 - You get the following output while trying to merge a feature branch into `master` branch. What do you understand from that?
```
Auto-merging anti_virus.rb
CONFLICT (content): Merge conflict in anti_virus.rb
Automatic merge failed; fix conflicts and then commit the result.
```

*Multiple Choice*

1. There is a conflict in the source file `anti_virus.rb` but merge finally did the conflict resolution automatically and you do not have to do anything.
2. Everything went successfully.
3. Merge has failed and my changes on `anti_virus.rb` file have been lost. Next time I have to be careful for conflicts before trying any merge. 
4. There is a conflict in the source file `anti_virus.rb` and merge cannot continue unless conflicts are first resolved.

## Question #13 - You see the following in a source file named `anti_virus.rb`. What do you get out of it? Assume that your current branch is `master`.
```
class AntiVirus
<<<<<<< HEAD
  attr_reader :type
=======
  attr_reader :classification
>>>>>>> feature-anti-virus-protection
end
```

*Multiple Choice*

1. There is a merge conflict. `master` branch has the line `attr_reader :type` whereas `feature-anti-virus-protection`, that I am merging from, has the line `attr_reader :classification`.
2. There is a merge conflict. I am trying to merge branch `master` to branch `feature-anti-virus-protection`. I have to include both lines into the destination branch, i.e. into `feature-anti-virus-protection`.
3. There is a merge conflict. I am trying to merge branch `feature-anti-virus-protection` to branch `master`. I have to include both lines into the destination branch, i.e. into `master`.
4. I have to move line `<<<<<<< HEAD` and line `>>>>>>> feature-anti-virus-protection` two spaces to the right in order to fix indentation. Otherwise, there is no problem.

## Question #14 - What are the commands to rename the branch `feature-foo` to `feature-bar`? Assume that you are on branch `master`.

*Fill In The Blanks*

```bash
____________________________________
____________________________________
```

## Question #15 - In order to rename a branch you need to be on another branch, i.e. the branch you want to rename should not be your current branch.

*True/False*

1. True
2. False

## Question #16 - You can delete the current branch you are on and you will automatically be switched to `master` branch.

*True/False*

1. True
2. False

## Question #17 - Which is the command to delete the branch with name `feature-crm`?

*Fill In The Blanks*

``` bash
__________________________________________
```
