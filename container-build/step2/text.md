
> Press Ctrl+c to exit the running container

Tag the image, which is currently tagged as `pinger`, also as `local-registry:5000/pinger`.

Then push the image into the local registry.

<br>
<details><summary>Solution</summary>
<br>

```plain
podman tag pinger local-registry:5000/pinger

podman image ls

podman push local-registry:5000/pinger
```{{exec}}

</details>
