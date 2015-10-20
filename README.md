# ruby-on-rails-dev-box
[![Build Status](https://travis-ci.org/vnegrisolo/ruby-on-rails-dev-box.svg)](https://travis-ci.org/vnegrisolo/ruby-on-rails-dev-box)

:computer: A Virtual Machine for a ruby on rails developer

## What is in the box:

* [apt](https://github.com/opscode-cookbooks/apt) / apt-get
* [htop](https://github.com/phlipper/chef-htop)
* [git](https://github.com/jssjr/git)
* [oh_my_zsh](https://github.com/shingara/oh-my-zsh-chef)
* [rbenv](https://github.com/fnichol/chef-rbenv)
* [redis](https://github.com/brianbianco/redisio)
* [nginx](https://github.com/miketheman/nginx)
* [elastic-search](https://github.com/nathwill/chef-elasticsearch-ng)
* [postgresql](https://github.com/hw-cookbooks/postgresql)
* [mysql](https://github.com/chef-cookbooks/mysql)
* **ruby** 2.2.3
* my projects from github
* my dotfiles project
* timezone, locale
* neobundle for vim
* nodejs with npm

## Requirements

* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](http://vagrantup.com)
* [Chef-dk](https://downloads.chef.io/chef-dk/)
* [Berk](http://berkshelf.com/)
* local home called `projects` in the home directory: `~/projects`

## Install

The install process is taking about: **50 min**

1. Download and Install `Virtual Box` - virtual machine provider
2. Download and Install `Vagrant` - virtualization tool
3. Download and Install `Chef-dk` - chef tools
4. Create a projects folder (sync folder) using: `mkdir ~/projects`
5. Download the a project zip file from github download zip button
6. Install the ruby-on-rails-dev-box: `vagrant up`
7. Connect to the virtual machine: `vagrant ssh`
8. Copy the ssh key with `pbcopy < ~/.ssh/id_rsa.pub` and add it to the github settings
9. Test github connection: `ssh -T git@github.com`

## Vagrant Commands

```shell
vagrant <command>
```

| Command   | Description                                                                     |
| :-------- | :------------------------------------------------------------------------------ |
| up        | starts the virtual machine                                                      |
| status    | check the status for the virtual machine                                        |
| ssh       | connect to the virtual machine by ssh                                           |
| halt      | stops the virtual machine                                                       |
| provision | run the provision commands to the virtual machine, in this case the `chef-solo` |
| suspend   | save the current status of the virtual machine and hibernate it                 |
| resume    | resume the virtual machine from suspension                                      |
| destroy   | destroy the virtual machine                                                     |

## Virtual Machine configuration

### Shared Folders

the host computer and the virtual machine share a folder by `nfs` (more efficient) in both by the path: `~/projects/`

### Forward Ports

| Port | What is for                                 |
| :--- | :------------------------------------------ |
| 80   | [nginx http](http://192.168.33.10)          |
| 443  | [nginx https](https://192.168.33.10)        |
| 3000 | [rails server](http://192.168.33.10:3000)   |
| 5432 | [postgresql](http://192.168.33.10:5432)     |
| 6379 | [redis](http://192.168.33.10:6379)          |
| 9200 | [elastic search](http://192.168.33.10:9200) |

## References

* [Chef Cookbooks](https://supermarket.chef.io/)
* [Chef Docs](https://docs.chef.io/)
