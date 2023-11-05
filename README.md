# Tranform your desktop app into webapp

You can use Tkinter, C++, console applications, and others to create software that can be virtualized transparently. Now, you can run your desktop application on the web without any modifications.


# Features
* Isolated sessions via RDP.
* User management through Apache Guacamole.
* Optimized and hardened Openbox environment.

# Setup
Create an directory app and change Dockerfile to fit your needs. Then, run the below command.

```
docker compose up
```


# How it works?
Guacamole
RDP
Openbox and ArchLinux


# Windows RDP connection
You can connect Docker containers to your virtual machine and set up RemoteApps, allowing you to convert Windows applications into web applications as well.
```
Protocol: RDP

Hostname: your virtual machine ip

Port: 3389

Username: your account

Password: your password

Security Mode: NLA

Domain: MicrosoftAccount

Ignore Security Certificate: (checked)
```

# References
https://github.com/boschkundendienst/guacamole-docker-compose/tree/master

https://www.youtube.com/watch?v=WhENXFkiOlI&t=3137s&pp=ygUOZHJhZ29uIHdpbmFwcHM%3D
