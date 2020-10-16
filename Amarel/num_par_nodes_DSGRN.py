import DSGRN

net_spec = 'x : x ~y\n y: ~x y'

network = DSGRN.Network(net_spec)

parameter_graph = DSGRN.ParameterGraph(network)

print('Number of nodes in parameter graph:', parameter_graph.size())
