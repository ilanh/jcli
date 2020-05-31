# jelastic-cli docker
docker with jelastic cli for automation tasks.
## usage in development
Make sure you have docker installed and run:
<pre>
docker run -it --rm --name jcli -v /home/$()/.config/jelastic:/root/.config/jelastic ilanh/jcli:latest /root/jelastic/environment/control/getenvs
</pre>
## usage in production
TODO: add gitlab-runner example and explain .gitlab-ci.yaml 
TODO: add bamboo example
TODO: add jenkins example 
