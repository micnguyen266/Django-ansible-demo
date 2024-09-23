## Django-ansible-demo (Work-in-progress)

### Check out site below. Still WIP!

```
demo.mrmikenguyen.com/static/hello.html
```


**Steps that were done. Will cleanup and update later!**
1. Spin up Ubuntu server in Linode.
2. SSH to server.
3. Create user under sudo group
   4. useradd -m -s /bin/bash -G sudo mike
5. Change user password
   6. passwd mike
7. Check if user was created
   8. cat /etc/passwd
9. Switch to mike user
   10. su mike
11. Change hostname through systemd
    12. sudo hostnamectl set-hostname mike-systems
13. Reload shell
    14. bash
15. In server for extra security and to auth by ssh without password auth "sudo vim /etc/ssh/sshd_config" change PermitRootLogin to "no", PubKeyAuthentication to "yes" and PasswordAuthentication to "no".
16. Copy Public IP address of server and create A record in Linode domains.
17. Install NGINX
    18. sudo apt-get install nginx
19. (To Update Later). Domain purchased on cloudflare. Created A record with public IP of Linode host. Turned off proxy on CF.
20. Install Ansible on local machine. Created Ansible directory with 3 files hosts, deploy-demo.yml, and deploy.
21. To test: ansible-playbook deploy-demo.yml -i hosts -K
22. 