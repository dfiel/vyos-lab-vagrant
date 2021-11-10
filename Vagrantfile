# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
  config.vm.provider :libvirt do |domain|
    domain.management_network_address = "10.255.1.0/24"
    domain.management_network_name = "wbr1"
    domain.nic_adapter_count = 130
  end
  #Generating Ansible Host File at following location:
  #    ./.vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "./helper_scripts/empty_playbook.yml"
  end

  config.vm.define "AS1-RTR1" do |device|
    device.vm.box = "higebu/vyos"

    device.vm.provider :libvirt do |v|
      v.memory = 1024
      v.nic_model_type = "e1000"
    end
  config.vm.synced_folder '.', '/vagrant', disabled: true

    # NETWORK INTERFACES
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:01",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8001',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9001',
            :libvirt__iface_name => '1R1-2R1',
            auto_config: false

      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:02",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8002',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9002',
            :libvirt__iface_name => '1R1-1R2',
            auto_config: false
    
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:37",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8019',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9019',
            :libvirt__iface_name => '1R1-1R3',
            auto_config: false

  config.vm.boot_timeout = 400

  config.ssh.forward_agent = true
  config.ssh.guest_port = 22
  config.ssh.insert_key = false

end
  
  config.vm.define "AS1-RTR2" do |device|
    device.vm.box = "higebu/vyos"

    device.vm.provider :libvirt do |v|
      v.memory = 1024
      v.nic_model_type = "e1000"
    end
  config.vm.synced_folder '.', '/vagrant', disabled: true

    # NETWORK INTERFACES
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:03",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '9002',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '8002',
            :libvirt__iface_name => '1R2-1R1',
            auto_config: false

      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:04",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8003',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9003',
            :libvirt__iface_name => '1R2-1R3',
            auto_config: false

      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:05",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8004',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9004',
            :libvirt__iface_name => '1R2-1C',
            auto_config: false

  config.vm.boot_timeout = 400

  config.ssh.forward_agent = true
  config.ssh.guest_port = 22
  config.ssh.insert_key = false
end
  
  config.vm.define "AS1-RTR3" do |device|
    device.vm.box = "higebu/vyos"

    device.vm.provider :libvirt do |v|
      v.memory = 1024
      v.nic_model_type = "e1000"
    end
  config.vm.synced_folder '.', '/vagrant', disabled: true

    # NETWORK INTERFACES
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:06",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '9003',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '8003',
            :libvirt__iface_name => '1R3-1R2',
            auto_config: false

      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:07",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8005',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9005',
            :libvirt__iface_name => '1R3-2R3',
            auto_config: false

      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:08",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8006',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9006',
            :libvirt__iface_name => '1R3-3R3',
            auto_config: false
    
          device.vm.network "private_network",
            :mac => "a0:00:00:00:00:38",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '9019',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '8019',
            :libvirt__iface_name => '1R3-1R1',
            auto_config: false

  config.vm.boot_timeout = 400

  config.ssh.forward_agent = true
  config.ssh.guest_port = 22
  config.ssh.insert_key = false
end
  
  config.vm.define "AS1-CLIENT" do |device|
    device.vm.box = "debian/bullseye64"

    device.vm.provider :libvirt do |v|
      v.memory = 1024
      v.nic_model_type = "e1000"
    end
  config.vm.synced_folder '.', '/vagrant', disabled: true

    # NETWORK INTERFACES
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:09",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '9004',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '8004',
            :libvirt__iface_name => '1C-1R2',
            auto_config: false

  config.vm.boot_timeout = 400

  config.ssh.forward_agent = true
  config.ssh.guest_port = 22
end

  config.vm.define "AS2-RTR1" do |device|
    device.vm.box = "higebu/vyos"

    device.vm.provider :libvirt do |v|
      v.memory = 1024
      v.nic_model_type = "e1000"
    end
  config.vm.synced_folder '.', '/vagrant', disabled: true

    # NETWORK INTERFACES
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:10",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '9001',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '8001',
            :libvirt__iface_name => '2R1-1R1',
            auto_config: false

      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:11",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8007',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9007',
            :libvirt__iface_name => '2R1-2R2',
            auto_config: false
    
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:12",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8008',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9008',
            :libvirt__iface_name => '2R1-2R3',
            auto_config: false

  config.vm.boot_timeout = 400

  config.ssh.forward_agent = true
  config.ssh.guest_port = 22
  config.ssh.insert_key = false
end
  
  config.vm.define "AS2-RTR2" do |device|
    device.vm.box = "higebu/vyos"

    device.vm.provider :libvirt do |v|
      v.memory = 1024
      v.nic_model_type = "e1000"
    end
  config.vm.synced_folder '.', '/vagrant', disabled: true

    # NETWORK INTERFACES
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:13",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '9007',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '8007',
            :libvirt__iface_name => '2R2-2R1',
            auto_config: false

      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:14",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8009',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9009',
            :libvirt__iface_name => '2R2-3R2',
            auto_config: false
    
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:15",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8010',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9010',
            :libvirt__iface_name => '2R2-4R3',
            auto_config: false
    
          device.vm.network "private_network",
            :mac => "a0:00:00:00:00:39",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8020',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9020',
            :libvirt__iface_name => '2R2-2R3',
            auto_config: false

  config.vm.boot_timeout = 400

  config.ssh.forward_agent = true
  config.ssh.guest_port = 22
  config.ssh.insert_key = false
end
  
  config.vm.define "AS2-RTR3" do |device|
    device.vm.box = "higebu/vyos"

    device.vm.provider :libvirt do |v|
      v.memory = 1024
      v.nic_model_type = "e1000"
    end
  config.vm.synced_folder '.', '/vagrant', disabled: true

    # NETWORK INTERFACES
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:16",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '9008',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '8008',
            :libvirt__iface_name => '2R3-2R1',
            auto_config: false

      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:17",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '9006',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '8006',
            :libvirt__iface_name => '2R3-1R3',
            auto_config: false
    
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:18",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8011',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9011',
            :libvirt__iface_name => '2R3-2C',
            auto_config: false
    
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:40",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '9020',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '8020',
            :libvirt__iface_name => '2R3-2R2',
            auto_config: false

  config.vm.boot_timeout = 400

  config.ssh.forward_agent = true
  config.ssh.guest_port = 22
  config.ssh.insert_key = false
end
  
  config.vm.define "AS2-CLIENT" do |device|
    device.vm.box = "debian/bullseye64"

    device.vm.provider :libvirt do |v|
      v.memory = 1024
      v.nic_model_type = "e1000"
    end
  config.vm.synced_folder '.', '/vagrant', disabled: true

    # NETWORK INTERFACES
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:19",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '9011',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '8011',
            :libvirt__iface_name => '2C-2R3',
            auto_config: false

  config.vm.boot_timeout = 400

  config.ssh.forward_agent = true
  config.ssh.guest_port = 22
end
  
  config.vm.define "AS3-RTR1" do |device|
    device.vm.box = "higebu/vyos"

    device.vm.provider :libvirt do |v|
      v.memory = 1024
      v.nic_model_type = "e1000"
    end
  config.vm.synced_folder '.', '/vagrant', disabled: true

    # NETWORK INTERFACES
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:20",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8012',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9012',
            :libvirt__iface_name => '3R1-4R1',
            auto_config: false

      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:21",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8013',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9013',
            :libvirt__iface_name => '3R1-3R3',
            auto_config: false
    
       device.vm.network "private_network",
            :mac => "a0:00:00:00:00:41",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8021',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9021',
            :libvirt__iface_name => '3R1-3R2',
            auto_config: false

  config.vm.boot_timeout = 400

  config.ssh.forward_agent = true
  config.ssh.guest_port = 22
  config.ssh.insert_key = false
end
  
  config.vm.define "AS3-RTR2" do |device|
    device.vm.box = "higebu/vyos"

    device.vm.provider :libvirt do |v|
      v.memory = 1024
      v.nic_model_type = "e1000"
    end
  config.vm.synced_folder '.', '/vagrant', disabled: true

    # NETWORK INTERFACES
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:22",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '9009',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '8009',
            :libvirt__iface_name => '3R2-2R2',
            auto_config: false

      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:23",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8014',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9014',
            :libvirt__iface_name => '3R2-3R3',
            auto_config: false
    
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:24",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8015',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9015',
            :libvirt__iface_name => '3R2-3C',
            auto_config: false
    
       device.vm.network "private_network",
            :mac => "a0:00:00:00:00:42",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '9021',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '8021',
            :libvirt__iface_name => '3R2-3R1',
            auto_config: false

  config.vm.boot_timeout = 400

  config.ssh.forward_agent = true
  config.ssh.guest_port = 22
  config.ssh.insert_key = false
end
  
  config.vm.define "AS3-RTR3" do |device|
    device.vm.box = "higebu/vyos"

    device.vm.provider :libvirt do |v|
      v.memory = 1024
      v.nic_model_type = "e1000"
    end
  config.vm.synced_folder '.', '/vagrant', disabled: true

    # NETWORK INTERFACES
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:25",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '9014',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '8014',
            :libvirt__iface_name => '3R3-3R2',
            auto_config: false

      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:26",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '9013',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '8013',
            :libvirt__iface_name => '3R3-3R1',
            auto_config: false
    
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:27",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '9006',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '8006',
            :libvirt__iface_name => '3R3-1R3',
            auto_config: false

  config.vm.boot_timeout = 400

  config.ssh.forward_agent = true
  config.ssh.guest_port = 22
  config.ssh.insert_key = false
end
  
  config.vm.define "AS3-CLIENT" do |device|
    device.vm.box = "debian/bullseye64"

    device.vm.provider :libvirt do |v|
      v.memory = 1024
      v.nic_model_type = "e1000"
    end
  config.vm.synced_folder '.', '/vagrant', disabled: true

    # NETWORK INTERFACES
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:28",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '9015',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '8015',
            :libvirt__iface_name => '3C-3R2',
            auto_config: false

  config.vm.boot_timeout = 400

  config.ssh.forward_agent = true
  config.ssh.guest_port = 22
end
  
  config.vm.define "AS4-RTR1" do |device|
    device.vm.box = "higebu/vyos"

    device.vm.provider :libvirt do |v|
      v.memory = 1024
      v.nic_model_type = "e1000"
    end
  config.vm.synced_folder '.', '/vagrant', disabled: true

    # NETWORK INTERFACES
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:29",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '9012',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '8012',
            :libvirt__iface_name => '4R1-3R1',
            auto_config: false

      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:30",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8016',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9016',
            :libvirt__iface_name => '4R1-4R2',
            auto_config: false
    
       device.vm.network "private_network",
            :mac => "a0:00:00:00:00:43",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8022',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9022',
            :libvirt__iface_name => '4R1-4R3',
            auto_config: false

  config.vm.boot_timeout = 400

  config.ssh.forward_agent = true
  config.ssh.guest_port = 22
  config.ssh.insert_key = false
end
  
  config.vm.define "AS4-RTR2" do |device|
    device.vm.box = "higebu/vyos"

    device.vm.provider :libvirt do |v|
      v.memory = 1024
      v.nic_model_type = "e1000"
    end
  config.vm.synced_folder '.', '/vagrant', disabled: true

    # NETWORK INTERFACES
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:31",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '9016',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '8016',
            :libvirt__iface_name => '4R2-4R1',
            auto_config: false

      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:32",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8017',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9017',
            :libvirt__iface_name => '4R2-4R3',
            auto_config: false
    
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:33",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8018',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9018',
            :libvirt__iface_name => '4R2-4C',
            auto_config: false

  config.vm.boot_timeout = 400

  config.ssh.forward_agent = true
  config.ssh.guest_port = 22
  config.ssh.insert_key = false
end
  
  config.vm.define "AS3-RTR2" do |device|
    device.vm.box = "higebu/vyos"

    device.vm.provider :libvirt do |v|
      v.memory = 1024
      v.nic_model_type = "e1000"
    end
  config.vm.synced_folder '.', '/vagrant', disabled: true

    # NETWORK INTERFACES
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:22",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '9009',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '8009',
            :libvirt__iface_name => '3R2-2R2',
            auto_config: false

      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:23",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8014',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9014',
            :libvirt__iface_name => '3R2-3R3',
            auto_config: false
    
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:24",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '8015',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '9015',
            :libvirt__iface_name => '3R2-3C',
            auto_config: false

  config.vm.boot_timeout = 400

  config.ssh.forward_agent = true
  config.ssh.guest_port = 22
  config.ssh.insert_key = false
end
  
  config.vm.define "AS4-RTR3" do |device|
    device.vm.box = "higebu/vyos"

    device.vm.provider :libvirt do |v|
      v.memory = 1024
      v.nic_model_type = "e1000"
    end
  config.vm.synced_folder '.', '/vagrant', disabled: true

    # NETWORK INTERFACES
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:34",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '9017',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '8017',
            :libvirt__iface_name => '4R3-4R2',
            auto_config: false

      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:35",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '9010',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '8010',
            :libvirt__iface_name => '4R3-2R2',
            auto_config: false
    
       device.vm.network "private_network",
            :mac => "a0:00:00:00:00:44",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '9022',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '8022',
            :libvirt__iface_name => '4R3-4R1',
            auto_config: false

  config.vm.boot_timeout = 400

  config.ssh.forward_agent = true
  config.ssh.guest_port = 22
  config.ssh.insert_key = false
end
  
  config.vm.define "AS4-CLIENT" do |device|
    device.vm.box = "debian/bullseye64"

    device.vm.provider :libvirt do |v|
      v.memory = 1024
      v.nic_model_type = "e1000"
    end
  config.vm.synced_folder '.', '/vagrant', disabled: true

    # NETWORK INTERFACES
      device.vm.network "private_network",
            :mac => "a0:00:00:00:00:36",
            :libvirt__tunnel_type => 'udp',
            :libvirt__tunnel_local_ip => '127.0.0.1',
            :libvirt__tunnel_local_port => '9018',
            :libvirt__tunnel_ip => '127.0.0.1',
            :libvirt__tunnel_port => '8018',
            :libvirt__iface_name => '4C-4R2',
            auto_config: false

  config.vm.boot_timeout = 400

  config.ssh.forward_agent = true
  config.ssh.guest_port = 22
end

end

