# Tools - PHPDoc

David Williamson @ Varilink Computing Ltd

------

I would like to use the [official phpdocumentor image](https://hub.docker.com/r/phpdoc/phpdoc) from the Docker Hub as is. However, I want to run it as the user corresponding to my desktop user, so that when I write documentation back to the host it is owned by that user. Unfortunately, when I do this, I run into the following permissions issue within the container:

```
In Kernel.php line 633:
  Unable to create the "cache" directory (/opt/phpdoc/var/cache/prod).
```

Furthermore, setting the `--cache-folder` option for phpDocumentor to somewhere writeable, such as `/tmp`, does not solve this issue.

If you resolve that issue then you run into the same issue for the "logs" directory:

```
In Kernel.php line 633:
  Unable to create the "logs" directory (/opt/phpdoc/var/log). 
```

The Dockerfile in this repository creates a modified version of the phpdoc/phpdoc:3 image with these issues resolved. I build that modified version with this command:

```bash
docker build --tag varilink/phpdoc:3 .
```

So, the revised image, including tag, is varilink/phpdoc:3