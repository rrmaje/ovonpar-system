#!/bin/bash
cat > etc/exchange.conf << EOF
market-data {
  session             = parity
    multicast-interface = eth0 
      multicast-group     = 224.0.0.1
        multicast-port      = 5000
	  request-address     = $PARITY_SYSTEM_ADDRESS
	    request-port        = 5001
    }

    market-report {
      session             = parity
        multicast-interface = eth0 
	  multicast-group     = 224.0.0.1
	    multicast-port      = 6000
	      request-address     = $PARITY_SYSTEM_ADDRESS 
	        request-port        = 6001
	}

	order-entry {
	  address = $PARITY_SYSTEM_ADDRESS 
	    port    = 4000
    }

    instruments = [
      S-class,
        M-class,
	  L-class,
	  ]
EOF

echo `cat etc/exchange.conf`

java -jar parity-system.jar etc/exchange.conf

