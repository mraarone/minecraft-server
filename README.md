## Shut down all the containers

$ dcm stop

## Connect to RCON on one of the servers, in case you, say, get a text "can u give buddy22323 ops on the server plz" while you are in an important work all-hands.

$ dcm exec mc rcon-cli

## See which containers are running

$ dcm ps

## Check recent logs from a server to see why buddy22323 can't connect to the host

$ dcm logs disneyland



Note 1: Announcements won't work if host is on Ethernet and clients are on WiFi
Note 2: Multicast announcements require the host to be on the same network as the clients
Note 3: If the above aren't the case, below is how to get the announcements working:
(http://blog.zencoffee.org/2016/12/minecraft-local-server-discovery-cant-find-lan-games/)

Multicast Announcements (4445/UDP) binds to the wrong adapter, most likely.
1) netsh interface ip show joins
2) Administrative Powershell prompt.  Run get-netipinterface
Open an administrative Powershell prompt.  Run get-netipinterface and review.  You should see two entries for the offending adapter.  Look at the InterfaceMetric value for that adapter and for the adapter you want to be the default.  In my case, both were 25.
You can now adjust the interface metric for the offending adapter to be higher than the correct adapter;
3) get-netipinterface | where-object { $_.InterfaceAlias -like "VirtualBox*" } | set-netipinterface -interfacemetric 40
