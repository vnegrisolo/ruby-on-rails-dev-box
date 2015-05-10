# ruby-on-rails-dev-box
A virtual machine :computer: with a ruby on rails development environment.

## What is in the box:

* [apt](https://github.com/opscode-cookbooks/apt) / apt-get;
* [oh-my-zsh](https://github.com/shingara/oh-my-zsh-chef);
* [git](https://github.com/jssjr/git);
* my git projects;

## Requirements

* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](http://vagrantup.com)
* [Chef-dk](https://downloads.chef.io/chef-dk/)
* [Berk](http://berkshelf.com/)
* local home called `projects` in the home directory: `~/projects`

## Install

1. Download and Install `Virtual Box` - virtual machine provider;
2. Download and Install `Vagrant` - virtualization tool;
2. Download and Install `Chef-dk` - chef tools;
3. Create a projects folder (sync folder) using: `mkdir ~/projects`
4. Download the a project zip file from github download zip button;
5. Install the ruby-on-rails-dev-box: `vagrant up`
6. Connect to the virtual machine: `vagrant ssh`
7. Copy the ssh keys to connect to github to the virtual machine

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
