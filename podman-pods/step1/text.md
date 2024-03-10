
Create a pod named `my-pod` .


<br>
<details><summary>Info</summary>
<br>

```plain

In simple words, a `POD` is a group of one or more container that share the same namespaces.

When containers are grouped intp a pod they share the following namespaces:

* Network namespace
* process namespace
* IPC namespace


By sharing these namespaces, the containers are isolated from containers in other pods and can communicate with each other efficiently.

Pods in podman is similar to how pods work in kubenetes

Documentation: https://kubernetes.io/docs/concepts/workloads/pods/

```

</details>

<br>
<details><summary>Tip</summary>
<br>

```plain
How to create a pod?

Use podman pod create --name <PODNAME>
```

</details>


<br>
<details><summary>Solution</summary>
<br>



```plain
podman pod create --name my-pod 
```{{exec}}

</details>