class profile::sshserver {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                ensure => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC54xtcXkiI6Ple6YUbCK4ZrV4KCrNILgY3PHSYQMPIMAQg8xvH8SUFUE3v0kNnpugODhLt/DuQiPoGgm4yWYugvdYFbRv2xKnXfkQuO6vg1YCljHcMSMHzJPrVv95qI9z4ukZnp5zjuJzqmv+z9bnvkNreRmalbIZkJDgnvwH8ilUT6JDHAtYbwQQ2UVoqW7thUv+gG2qfE+4RM8WCl4lOENawP/xngdt5nOyJNWJ8cDIP/+V12ZBwegi59ez8ghN0mvYNzxjarlzy/WL1+wI6dc5oPsMKUmbLLRDQRzkxOWBTBrVUXQC9h6/9yB7x8zdc0TqHVcXWumrnQotq7NYd',
        }
 }
