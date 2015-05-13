# ruby-on-rails-dev-box
A virtual machine :computer: with a ruby on rails development environment.

## What is in the box:

* [apt](https://github.com/opscode-cookbooks/apt) / apt-get
* [htop](https://github.com/phlipper/chef-htop)
* [git](https://github.com/jssjr/git)
* [oh_my_zsh](https://github.com/shingara/oh-my-zsh-chef)
* [ruby_build](https://github.com/fnichol/chef-ruby_build)
* [rbenv](https://github.com/fnichol/chef-rbenv)
* **ruby** 2.2.2
* gems: [**bundler**]
* my projects
* timezone

## Requirements

* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](http://vagrantup.com)
* [Chef-dk](https://downloads.chef.io/chef-dk/)
* [Berk](http://berkshelf.com/)
* local home called `projects` in the home directory: `~/projects`

## Install

The install process is taking about: **25 min**

1. Download and Install `Virtual Box` - virtual machine provider
2. Download and Install `Vagrant` - virtualization tool
3. Download and Install `Chef-dk` - chef tools
4. Create a projects folder (sync folder) using: `mkdir ~/projects`
5. Download the a project zip file from github download zip button
6. Install the ruby-on-rails-dev-box: `vagrant up`
7. Connect to the virtual machine: `vagrant ssh`
8. Create ssh keys: `ssh-keygen -t rsa -C "your_email@example.com"`
9. Copy the ssh key with `pbcopy < ~/.ssh/id_rsa.pub` and add it to the github settings
10. Test github connection: `ssh -T git@github.com`

## Vagrant Commands

```shell
vagrant <command>
```

<table>
  <thead><tr><th>Command</th><th>Description</th></tr></thead>
  <tbody>
    <tr><td>up</td><td>starts the virtual machine</td></tr>
    <tr><td>status</td><td>check the status for the virtual machine</td></tr>
    <tr><td>ssh</td><td>connect to the virtual machine by ssh</td></tr>
    <tr><td>halt</td><td>stops the virtual machine</td></tr>
    <tr><td>provision</td><td>run the provision commands to the virtual machine, in this case the `chef-solo`</td></tr>
    <tr><td>suspend</td><td>save the current status of the virtual machine and hibernate it</td></tr>
    <tr><td>resume</td><td>resume the virtual machine from suspension</td></tr>
    <tr><td>destroy</td><td>destroy the virtual machine</td></tr>
  </tbody>
</table>

## Virtual Machine configuration

### Shared Folders

the host computer and the virtual machine share a folder by `nfs` (more efficient) in both by the path: `~/projects/`

### Forward Ports

host computer forwards to virtual machine through ports:
<table>
  <thead><tr><th>Port</th><th>What is for</th><th>url</th></tr></thead>
  <tbody>
    <tr><td>3000</td><td>rails server</td><td>http://192.168.33.10:3000</td></tr>
  </tbody>
</table>

## References

* [Chef Cookbooks](https://supermarket.chef.io/)
* [Chef Docs](https://docs.chef.io/)
