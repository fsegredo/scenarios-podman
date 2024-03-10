
Remove the container `web`from the pod `my-pod`


<br>
<details><summary>Tip</summary>
<br>

```plain
How to remove container from pod?

same way as you would remove/delete a container (stop and delete or -f)

podman stop <CONTAINERNAME> && podman rm <CONTAINERNAME>

or

podman rm web -f


```

</details>


<br>
<details><summary>Solution</summary>
<br>



```plain
podman stop web && podman rm web

```{{exec}}

</details>