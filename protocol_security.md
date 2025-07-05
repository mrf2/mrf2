# Protocol Security and Hardening

|Field|Why Need|
|---|---|
|**Networking (TCP/IP, routing, NAT)**|Protocols operate over networks. We must understand how packets move and get modified *(like in routers/firewalls)*.|
|**Operating Systems**|Protocol stacks *(like TCP/IP)* are implemented inside OS kernel (e.g., Linux). We will often debug ro harden at the kernel/socket/syscall level.|
|**Low-level Programming (C, assembly, ELF, AB)**|Helps us understand packet structures, parsing bugs, memory corruption (e.g., buffer overflows in protocol parsers).
|**Firewalls/NAT/iptables**|These modify or filter protocol behavior - ***curcial for security***.|
|**Cryptography**|Many secure protocols (TLS, IPsec, DNSSEC) rely on crypto.|
|**(Compilers and Linkers)**|Only needed if we are working with protocol binaries, firmware, or debugging low-level protocol handling code.|
|**Router/Switch Behavior**|Routers can mangle packets, rewrite headers, do NAT or Deep Packet Inspection (DPI) - ***curcial for hardening and bypass analysis***.|
