
Clean up and remove the pod `my-pod` and it's containers 


<br>
<details><summary>Tip</summary>
<br>

```plain

Start by stopping the pod and then remove it


```

</details>


<br>
<details><summary>Solution</summary>
<br>



```plain
podman pod stop my-pod && podman pod rm my-pod

```{{exec}}

</details>