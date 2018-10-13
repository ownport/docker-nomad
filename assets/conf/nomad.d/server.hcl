{ 
    "server": {
        "enabled": true,
        "bootstrap_expect": 3
    },
    "datacenter": "${DATACENTER}",
    "region": "${REGION}",
    "data_dir": "/nomad/data/",
    "bind_addr": "0.0.0.0",
    "advertise": {
        "http": "${IPV4}:4646",
        "rpc": "${IPV4}:4647",
        "serf": "${IPV4}:4648"
    },
    "enable_debug": true 
}
