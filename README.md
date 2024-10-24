## **Overview**

This project sets up a highly available and load-balanced VPN service using OpenVPN. The architecture consists of three OpenVPN servers with load balancers to ensure failover and high availability for end-users.

# **Features**

High Availability: Ensures continuous service even if one or more servers fail.
Load Balancing: Distributes the load across multiple servers to optimize performance.
Security: Utilizes OpenVPN for secure and encrypted connections.

# **Architecture**

3 OpenVPN Servers: Each server is configured to handle VPN connections.
Load Balancers: Distribute incoming VPN connections across the three servers to ensure optimal performance and failover.

![Image](https://github.com/tgdebilka/openvpn-balancers/blob/main/diagram.png)

