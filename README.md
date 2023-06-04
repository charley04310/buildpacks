# Buildpacks

Buildpacks are used to build the application and create a container image. For more informations about creating buildpacks, see [Buildpacks](https://buildpacks.io/docs/buildpack-author-guide/create-buildpack/).

<p align="center">
 <img src="https://buildpacks.io/images/buildpacks-social-card.jpg" alt="builder" >
</p>

## Table of Contents

- [Requirements](#requirements)
- [Install PACK](#install-pack)
  - [Linux Ubuntu](#linux-ubuntu)
- [Run BUILDPACKS](#run-buildpacks)
- [Run BUILDPACKS from bash script](#run-buildpacks-from-bash-script)

## Requirements

- [Docker](https://www.docker.com/)
- [Pack](https://buildpacks.io/docs/install-pack/)

## Install PACK

### Linux Ubuntu

```bash
sudo add-apt-repository ppa:cncf-buildpacks/pack-cli
sudo apt-get update
sudo apt-get install pack-cli
```

## Run BUILDPACKS

> **_Notes_**: all builders listed don't support all languages and frameworks. For more informations about builders, see [Builder](https://buildpacks.io/docs/concepts/components/builder/).

1. First you can list all available builders with the following command:

```bash
pack builder suggest
```

output should be like this:

<p align="center">
 <img src="https://github.com/Charley04310/buildpacks/blob/main/docs/img/list-builder.png" alt="builder" >
</p>

Then you can build the application with the following command:

```bash
pack build test-react --path <path-to-any-project-from-this-repo> --builder <builder-name-get-from-the-list>
```

Pack will run the buildpacks in the order specified in the builder with auto-detection of the language and the framework :

<p align="center">
 <img src="https://github.com/Charley04310/buildpacks/blob/main/docs/img/analyzing.png" alt="builder" >
</p>

Then it will create a container image:

<p align="center">
 <img src="https://github.com/Charley04310/buildpacks/blob/main/docs/img/build.png" alt="builder" >
</p>

## Run BUILDPACKS from bash script

Before running the script, you need to give it the right to execute:

```bash
chmod +x clone-repo-and-build.sh
```

Then you must edit the script and change the following variables:

```bash
# Variables
REPO_URL="<path-to-repo>"
IMAGE_NAME="<image-name>"
BUILDER="<builder-name>"
```

Finally you can run the script:

```bash
./clone-repo-and-build.sh
```
