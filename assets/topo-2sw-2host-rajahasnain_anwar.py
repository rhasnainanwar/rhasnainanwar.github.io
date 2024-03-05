"""Custom topology

Two switches connected to 6 nodes.

     host1  host2  host3  host4
       |     |       |     |
       switch1  ---  switch2
          |             |
        host6          host5
"""

from mininet.topo import Topo

class RajahasnainAnwarTopo( Topo ):

    def __init__( self ):
        "Create custom topo."

        # Initialize topology
        Topo.__init__( self )

        # Add hosts
        host1 = self.addHost( 'N1' )
        host2 = self.addHost( 'N2' )
        host3 = self.addHost( 'N3' )
        host4 = self.addHost( 'N4' )
        host5 = self.addHost( 'N5' )
        host6 = self.addHost( 'N6' )

        # Add switches
        switch1 = self.addSwitch( 'switch1' )
        switch2 = self.addSwitch( 'switch2' )

        # Add links
        self.addLink( host1, switch1 )
        self.addLink( host2, switch1 )
        self.addLink( host6, switch1 )

        self.addLink( host3, switch2 )
        self.addLink( host4, switch2 )
        self.addLink( host5, switch2 )

        self.addLink( switch1, switch2 )


topos = { 'rajahasnain_anwar': ( lambda: RajahasnainAnwarTopo() ) }