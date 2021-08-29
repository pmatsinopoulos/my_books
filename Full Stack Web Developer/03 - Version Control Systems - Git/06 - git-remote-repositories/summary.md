We have learned in the previous chapters all the commands that can make you a productive git user.
But, we have not taught you how you would have to use git in order to collaborate with other 
developers working on the same project.

This is the subject of this chapter.

You will learn how a new developer that joins the project will get the source code of the project and be
ready to work on that.

![./images/A New Member Joins The Project Team](./images/crm-project-with-one-member-new-member-joins.png)

Also, you will learn the necessary commands that will allow you to exchange code with other developers working on the
same project.

![./images/Two Developers Use Remote Repository To Exchange Their Code](./images/how-two-developers-exchange-their-changes.png)

You will create a new account on Github and then a new repository to host your project source code, and to let other
developers work on the same project with you:

![./images/Github - Create A Repository](./images/when-a-new-account-on-github-is-created-click-here-to-create-new-repository.jpg)

You will understand how git helps your local work track the remote work.

![./images/Local Branch Tracks Remote Branch](./images/local-master-tracks-remote-master.png)

And you will learn how the developers take action to synchronize the local with the remote git databases:

![./images/Developer Needs To Act In Order To Keep Databases In Sync](./images/developer-needs-to-take-actions-to-synchronize-local-and-remote-git-dbs.png)

You will learn how a repository owner can add another developer as collaborator to his project.

![./images/Owner Adds Other Developer As Collaborator](./images/pmatsinopoulos-owns-the-remote-repository-and-has-added-collaborator.png)

You will finally find ways to resolve the conflicts

![./images/Conflicts After Merging Remote feature-order-creation](./images/conflicts-after-merging-origin-feature-order-creation.jpg)

that may occur after merging the work of your colleagues. And, actually, you will learn about two techniques on that,
the `git merge` and the `git rebase`. Each one treating your commit tree differently.

![./images/How Does Rebase look vs Merge](./images/second-developer-merged-work-with-git-rebase-instead-of-git-merge-comparison.jpg)
