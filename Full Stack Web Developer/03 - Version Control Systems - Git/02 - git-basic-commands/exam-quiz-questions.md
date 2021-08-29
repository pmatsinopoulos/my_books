## Question #1 - How many logical buckets Git uses to keep track of the state of your files?

*Multiple Choice*

1. 2
2. 4
3. 6
4. 8

## Question #2 - How does Git call the files that does not keep track of?

*Multiple Choice*

1. Ignored files
2. Skipped files
3. Untraced files
4. Untracked files

## Question #3 - How are we going to put an untracked file into the Git index bucket? Assume that the file is `foo.txt`:

*Fill In The Blanks*

```
________________________
```

## Question #4 - Which is another name for the index bucket?

*Multiple Choice*

1. Indexing bucket
2. Staging bucket
3. Added files bucket
4. Pre-commit bucket

## Question #5 - What is the purpose of the index bucket?

*Multiple Choice*

1. To keep track of the changes that are to be ignored.
2. To keep track of the changes that are going to stash.
3. To keep track of the changes that are going to be staged.
4. To keep track of the changes that are ready to be committed.

## Question #6 - If I have 5 files changed in my working directory but I only want to create a commit with the 2 of them, what do I have to do?

*Multiple Choice*

1. I have to put the other 3 into the ignore bucket and create a commit with the other 2.
2. I have to put the 2 files into the staging bucket and create a commit with these 2 files.
3. I have to put the 3 files into the untracked bucket and then create a commit with the 2 files.
4. I have to temporarily delete the 3 files, then create a commit with the 2 files and then undo the deletion of the 3 ones.

## Question #7 - Assuming that you have the following output of the `git status` command, which files and/or folders will be included in the next commit? 
```
On branch master

Initial commit

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)

        new file:   index.html
        new file:   foo.txt
        new file:   maria.txt

Untracked files:
  (use "git add <file>..." to include in what will be committed)

        .idea/
        john.txt
```

*Fill In The Blanks*

```
___________________________________________________________________
```

## Question #8 - Assuming that you have the following output. How do I put file `maria.txt` back into the untracked bucket?
```
On branch master

Initial commit

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)

        new file:   index.html
        new file:   foo.txt
        new file:   maria.txt

Untracked files:
  (use "git add <file>..." to include in what will be committed)

        john.txt
```

*Fill In The Blanks*

```
_________________________________________________________________
```

## Question #9 - Assuming that I have the following output, how do I commit the file `index.html` only?
```
On branch master

Initial commit

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)

        new file:   index.html
        new file:   foo.txt
        new file:   maria.txt

Untracked files:
  (use "git add <file>..." to include in what will be committed)

        john.txt
```

*Multiple Choice*

1. `git commit index.html`.
2. `git commit`.
3. `git commit --file index.html`.
4. You cannot commit only the file `index.html`. 

## Question #10 - Shall I be creating commits without accompanying message?

*Multiple Choice*

1. No, the commit history is much easier to read if each commit has an accompanying message explaining what the commit is about.
2. Yes, each commit can give you the changes and you can inspect the changes in order to find out what the commit is about.

## Question #11 - Which is the command to create a commit with message "Fixes Error on Sign Up" ?

*Fill In The Blanks*

``` bash
_______________________________________
```

## Question #12 - What is a Git branch?

*Multiple Choice*

1. It is the differences of two files.
2. It is the branch that we create with an `if` command.
3. It is the output of the git diff command.
4. It is a snapshot of your project files within the committed bucket.

## Question #13 - What is, usually, the name of the default branch?

*Fill In The Blanks*

``` bash
_______________
```

## Question #14 - Which file do we use to record the names of the files or folders that we want to be ignored by Git?

*Fill In The Blanks*

``` bash
_______________________
```

## Question #15 - Which command lists the commits that we have done so far for the current branch?

*Fill In The Blanks*

``` bash
_______________________
```

## Question #16 - Assuming that I have just updated the file "foo.txt" that is already tracked by Git. What command will revert these changes?

*Fill In The Blanks*

``` bash
___________________________________
```

## Question #17 - Assuming that I have just updated the file "foo.txt" that is already tracked by Git. How do I see the changes that I have done?

*Fill In The Blanks*

```
___________________________________
```

## Question #18 - Let's assume that I have just updated the file "foo.txt" that is already tracked by Git. Let's assume also that I have added the
file to the staging area. How can I see the changes that I am about to commit, for that particular file?

*Fill In The Blanks*

```
___________________________________
```

## Question #19 - Let's assume that I have just updated the file "foo.txt" that is already tracked by Git. Let's assume also that I have added the
file to the staging area. How can I put the file back into the modified bucket?
 
*Fill In The Blanks*
```
_________________________
```

