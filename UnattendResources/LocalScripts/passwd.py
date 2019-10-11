from cloudbaseinit.metadata.services import maasservice

maas = maasservice.MaaSHttpService()
instance_id = maas.get_instance_id()
public_key = maas.get_public_keys()

file = open('../result.txt', 'w+')
file.write('instance_id = ' + instance_id + '\n\n')
file.write('public_key = ' + public_key + '\n')
