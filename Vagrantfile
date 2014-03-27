# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "ubuntu", primary: true do |ubuntu|
    ubuntu.vm.box = "precise64"
    ubuntu.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-12.04_chef-provisionerless.box"
    ubuntu.vm.provision "shell", path: "vagrant/scripts/ubuntu.sh"
    ubuntu.vm.provision "puppet" do |puppet|
      puppet.manifests_path = "vagrant/manifests/"
      puppet.manifest_file  = "ubuntu.pp"
    end
  end

  config.vm.define "fedora" do |fedora|
    fedora.vm.box = "schrodinger64"
    fedora.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_fedora-19_chef-provisionerless.box"
    fedora.vm.provision "shell", path: "vagrant/scripts/fedora.sh"
    fedora.vm.provision "puppet" do |puppet|
      puppet.manifests_path = "vagrant/manifests/"
      puppet.manifest_file  = "redhat.pp"
    end
  end

  config.vm.define "centos" do |centos|
    centos.vm.box = "centos-6.5-64"
    centos.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_centos-6.5_chef-provisionerless.box"
    centos.vm.provision "shell", path: "vagrant/scripts/centos_6_x.sh"
    centos.vm.provision "puppet" do |puppet|
      puppet.manifests_path = "vagrant/manifests/"
      puppet.manifest_file  = "redhat.pp"
    end
  end

  config.vm.define "freebsd" do |freebsd|
    freebsd.vm.box = "freebsd10-x64"
    freebsd.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_freebsd-10_chef-provisionerless.box"
    freebsd.vm.provision "shell", path: "vagrant/scripts/freebsd.sh"
    freebsd.vm.provision "puppet" do |puppet|
      puppet.manifests_path = "vagrant/manifests/"
      puppet.manifest_file  = "freebsd.pp"
    end
  end

end
