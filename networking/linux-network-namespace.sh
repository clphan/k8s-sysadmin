# To create new network namespace
ip netns add ns-red
ip netns add ns-blue
# To list all network namespaces
ip netns
# To delete a specific network namespace
ip netns del ns-red 
ip netns del ns-blue
# To list all interfaces in host
ip link
# To list all interfaces in a specific namespace 
ip netns exec ns-red ip link 
ip netns exec ns-blue ip link
# or using the command below
ip -n ns-red link
# To run ARP command in host 
arp 
# To run ARP inside a specific namespace
ip netns exec ns-red arp
ip netns exec ns-blue arp
# To run route in host
route 
# To run route inside a specific namespace
ip netns exec ns-red route
ip netns exec ns-blue route
# To create the connection between the two network namespaces
# we can use peer command, then we attach the virtual interface
# to appropriate interface
ip link add veth-ns-red type veth peer name veth-ns-blue
ip link set veth-ns-red netns ns-red
ip link set veth-ns-blue netns ns-blue
# Assign Ip address to the two namespaces
ip -n ns-red addr add 172.32.0.1 dev veth-ns-red
ip -n ns-blue addr add 172.32.0.2 dev veth-ns-blue
# Make the two interface up
ip -n ns-red link set veth-ns-red up
ip -n ns-blue link set veth-ns-blue up
# Check the connection
ip netns exec ns-red ping 172.32.0.2

