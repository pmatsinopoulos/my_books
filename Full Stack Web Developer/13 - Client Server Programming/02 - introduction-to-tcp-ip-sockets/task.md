You need to use TCP/IP sockets to develop a server that would function as a bank ATM machine. It will have to respond to the following questions:

1. Deposit
2. Withdraw
3. Balance

There is going to be a client that would allow the user to connect to the server and ask for their balance and deposit or withdraw money.

Here is a typical conversation between the client and the server.

![./images/Typical Conversation Between Client and Server](./images/tcp-ip-sockets-task-example-dialogue.svg)

1. Initially, user is asked to give their account number and their pin.
1. Then client authenticates user using the `authenticate` service of the server.
1. Then client asks for the current balance of the account, and informs user about it.
1. Then client asks the user to tell it which action they want to carry out. 
    1. Deposit
    1. Withdraw
    1. Balance
    1. Quit
1. If deposit or withdraw, client is asking the server to carry out the corresponding action.
1. If balance, client is asking the server to return back the current balance.
1. If quit, then client terminates.
    
Here is a short video displaying this interaction. In this video we show that we start the server and then we start the client which interacts 
with the user.

<div id="media-container-video-Task - TCP Sockets - ATM Client Server - Typical Interaction">
  <a href="https://player.vimeo.com/video/216122039"></a>
</div>

With regards to the user interaction with the client, some things that are not obvious from the video, and that you need to take care of
are:

1. If the user does not give correct account number/pin combination, client should terminate by informing user that the credentials were wrong.
1. User selection of an action (deposit, withdraw, balance or quit) should be done with the press of a key without the need to click on Enter.
(Hint: The `$stdin.getch` method does that. But you will need to require `io/console` - Google for it).
1. If the server is not running the client should gracefully terminate. (Try to rescue the `Errno::ECONNREFUSED` exception)
1. The server keeps track of the accounts, their pins and their balances using a local *database*. Its database can be either a `yml` or a `JSON`
file. Choose whatever you like. Again, the database with the accounts pre-exists.
1. When the server accepts a command to update the balance of an account (deposit or withdraw), then it saves the new balance in its database.
So, if you stop the server and you load it again, it will have the new balances read from its database.
1. When a client authenticates, server sends back to the client an authentication token which uniquely identifies the account authenticated
for the particular client interaction. Then subsequent calls to update the balance or get the balance use the authentication token returned.
Server is able to identify the account from the authentication token and does not need the account number and pin again.

Some hints that will help you implement this project:

1. You will need the lazy `#read` and `#write` commands. Don't look for something more complicated than that.
1. Note that when you want to send the EOF character you can close the write stream of the connection and leave
the read stream open in order to read the answer back. Likewise, when you first read and then write, you can close the read stream
after you read the message and then use the write stream to write back your answer. In any case, when you no longer need the connection,
close it.
1. Your client code needs to format the messages it sends to the server and the server needs to be able to understand
the format and take actions according to the content. One way that you can do that is that you can use a `Hash` to encode
your message and send over to the server a `JSON` version of the `Hash`. Note that `Hash#to_json` converts a `Hash` to
a `JSON` string. Also, `JSON.parse(<a JSON string>)` converts a `JSON` string to a `Hash`. If you go with the `JSON`
solution make sure that you require `json` file.
1. You don't have to keep the connection open while the client is running. You can simply create the connection (a different connection)
every time you need to send a message to the server.

Try to make your code, client and server, as DRY (Do Not Repeat Yourself) as possible. And as clean as possible. This is very important.

**Upload your code to your Github account so that your mentor can evaluate your work**

