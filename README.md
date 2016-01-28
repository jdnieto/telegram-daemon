# telegram-daemon for server control

## Instructions
*   Clone and follow instructions from [here](https://github.com/vysheng/tg.git)

*   After follow instructions to deploy as a service, copy files from etc in their directories.

*   Start telegram-cli manually and start a new encrypted chat with your desire account
    * **create_secret_chat** \<user\> - creates secret chat with this user. It gives you an user id necessary for _control.lua_ file.
      It is necessary that \<user\> accept the encrypted chat

*   Program _control.lua_ as you wish following samples
