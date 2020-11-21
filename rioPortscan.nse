  GNU nano 4.9.3                                rioPortscan.nse                                          
-- HEAD --
description = [[
This is a simple script example that determines if a port is open.
]]
author = "Mario Pugh"
-- RULE --
portrule = function(host, port)
        return port.protocol == "tcp"
                and port.state == "open"
end
-- ACTION --
action = function(host, port)
        return "This port is open!"
end


