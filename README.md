# ELK-Stack-Project
My first project for Columbia Universities Spring 2021 Cybersecurity Bootcamp

The files in this repository were used to configure the network depicted below.

![TODO: Update the path with the name of your diagram](Images/ELK_Stack_Network_Diagram.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the `filebeat-playbook.yml` file may be used to install only certain pieces of it, such as Filebeat.


This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting inbound access to the network.


Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the file systems of VMs on the network and system_metrics.


The configuration details of each machine may be found below.

| Name                 | Function   | IP Address | Operating System |
|----------------------|------------|------------|------------------|
| Jump-Box-Provisioner | Gateway    | 10.2.0.5   | Linux            |
| Web-1                | Web Server | 10.2.0.6   | Linux            |
| Web-2                | Web Server | 10.2.0.8   | Linux            |
| Web-3                | Web Server | 10.2.0.9   | Linux            |
| ELK-SERVER           | Monitoring | 10.1.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the `Jump-Box-Provisioner` machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- `local.machine.ip`

Machines within the network can only be accessed by each other.

A summary of the access policies in place can be found in the table below.

| Name                 | Publicly Accessible | Allowed IP    |
|----------------------|---------------------|---------------|
| Jump-Box-Provisioner | Yes                 | Local Machine |
| Web-1                | No                  | 10.2.0.0/16   |
| Web-2                | No                  | 10.2.0.0/16   |
| Web-3                | No                  | 10.2.0.0/16   |
| ELK-SERVER           | No                  | 10.1.0.0/16   |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because automated configuration allows us to ensure our scripts run identically everywhere.

The playbook implements the following tasks:
- Install Docker
- Install pip
- Install Docker python module using pip
- Use sysctl module to allocate more memory
- Download and launch a Docker ELK container
- Enable Docker service on boot

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Web-1 at `10.2.0.6`
- Web-2 at `10.2.0.8`
- Web-3 at `10.2.0.9`

We have installed the following Beats on these machines:
- Filebeat

These Beats allow us to collect the following information from each machine:
- Filebeat is used to detect changes to the system. We will use it to collect Apache logs in this case. 

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the `ansible.cfg` file to `/etc/ansible/`.
- Update the `hosts` file to include the addresses of which VMs to run the playbook on.
- Run the playbook, and navigate to `http://10.1.0.0.4:5601` to check that the installation worked as expected.

