ubuntu-14.04
=================

Packer template for Ubuntu 14.04 image.

These EBS backed AMIs are available in:

1. us-west-2: ami-1d34422d
2. us-west-1: ami-bcb08bf9
3. us-east-1: ami-7a37d412

You can also build a DigitalOcean Droplet or Rackspace OpenStack Image.

Ansible and Chef are installed as available provisioning systems.

In order to build an Amazon AMI, DigitalOcean Droplet or Rackspace OpenStack image, you will need accounts for each. Export these values to get Packer to honor them automatically:

    # Rackspace
    export SDK_USERNAME="username"  # Same as here: https://mycloud.rackspace.com/
    export SDK_PASSWORD="password-to-login" # Not the API key.
    export SDK_PROVIDER="rackspace-us" # Or rackspace-uk

    # EC2 - can be found here: https://portal.aws.amazon.com/gp/aws/securityCredentials?
    export AWS_ACCESS_KEY="long-random-string"
    export AWS_SECRET_KEY="another-even-longer-long-random-string"

    # Digital Ocean - get these here: https://cloud.digitalocean.com/api_access
    export DIGITALOCEAN_CLIENT_ID="long-random-string"
    export DIGITALOCEAN_API_KEY="another-long-random-string"

Please note: For DigitalOcean you may need to set your kernel manually in their web interface in order for it to stick. I have had a ticket into them for months now asking why my kernel choice doesn't seem to 'stick' - have had no answer.

To build the images - use these Rakefile targets:

    rake build            # Build all Packer targets
    rake build_ami        # Build AMI
    rake build_droplet    # Build Droplet
    rake build_openstack  # Build Openstack Image
    rake build_vagrant    # Build Vagrant box

This template forms the base image for [octohost](http://www.octohost.io).

Wercker build process shamelessley stolen and adjusted from [https://github.com/garethr/packer-serverspec-example](https://github.com/garethr/packer-serverspec-example).
