Let's verify our pod exists, by listing all the pods.

Next step is two create two containers and add them to my-pod:
* container named `web` from image `nginx`
* container names `mydatabase` from image `mysql`


Note: for the mysql container add the environment variable MYSQL_ROOT_PASSWORD=my-secret-pw 

<br>
<details><summary>Tip</summary>
<br>

```plain
How to add container to pod?

podman run -dt --pod <PODNAME> --name <CONTAINERNAME> <IMAGE>


```

</details>


<br>
<details><summary>Solution</summary>
<br>



```plain
podman run -dt --pod my-pod --name web nginx
podman run -dt -e MYSQL_ROOT_PASSWORD=my-secret-pw --pod my-pod --name mydatabase mysql

```{{exec}}

</details>