# jelastic-cli docker
docker with jelastic cli for automation tasks.
jelastic-cli documentation [here](https://docs.jelastic.com/cli)
## usage in development
Make sure you have docker installed and run:
<pre>
docker run -it --rm --name jcli -v /home/$USER/.config/jelastic:/root/.config/jelastic ilanh/jcli:latest ~/jelastic/users/authentication/signin --login {email} --password {password} --platformUrl {platform_url}
</pre>
Where:  
    platform_url - Jelastic installation URL in the app.[{hoster_domain}](https://docs.jelastic.com/jelastic-hoster-info) format  
    email - email (login), binded to your account  
    password - your account password  

Then you can run this command to test the login, you should get a json list of all your environments.
<pre>
docker run -it --rm --name jcli -v /home/$USER/.config/jelastic:/root/.config/jelastic ilanh/jcli:latest /root/jelastic/environment/control/getenvs
</pre>
## usage in production
TODO: add gitlab-runner example and explain .gitlab-ci.yaml  
  
To update the live deployment you can run:  
<pre>
docker run -it --rm --name jcli -v /home/$USER/.config/jelastic:/root/.config/jelastic ilanh/jcli:latest ~/jelastic/environment/vcs/update  --envName {env_name} --context {context}
</pre>
Where:
    env_name - The environment to update
    context - the folder under /var/www/webroot to deploy to, normally `ROOT`  
TODO: add bamboo example  
TODO: add jenkins example  
