desc "Build Vagrant box"
task :build_vagrant => [:cleanup_vagrant, :vagrantup]
task :vagrant => :build_vagrant

task :cleanup_vagrant do
  sh 'vagrant destroy -f'
end

task :vagrantup do
  sh 'vagrant up --provision'
end

desc "Build all Packer targets"
task :build do
  sh 'packer build template.json'
end

desc "Build AMI"
task :build_ami do
  sh 'packer build -only=amazon-ebs template.json'
end

desc "Build Droplet"
task :build_droplet do
  sh 'packer build -only=digitalocean template.json'
end

desc "Build Openstack Image"
task :build_openstack do
  sh 'packer build -only=openstack template.json'
end