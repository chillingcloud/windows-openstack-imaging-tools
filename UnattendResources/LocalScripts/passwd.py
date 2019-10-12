# The sys module lets you get at the command line arguments.
import sys

# Load up the cfg module, which contains all the classes and methods
# you'll need.
from oslo_config import cfg

# Define an option group
grp = cfg.OptGroup('DEFAULT')

# Define a couple of options
opts = [
    cfg.StrOpt('metadata_services'),
    cfg.StrOpt('maas_metadata_url'),
    cfg.StrOpt('maas_oauth_consumer_key'),
    cfg.StrOpt('maas_oauth_consumer_secret'),
    cfg.StrOpt('maas_oauth_token_key'),
    cfg.StrOpt('maas_oauth_token_secret'),
]

# Register your config group
cfg.CONF.register_group(grp)

# Register your options within the config group
cfg.CONF.register_opts(opts, group=grp)

# Process command line arguments.  The arguments tell CONF where to
# find your config file, which it loads and parses to populate itself.
cfg.CONF([
    '--config-file', '../conf/cloudbase-init-unattend.conf'
])

# Now you can access the values from the config file as
# CONF.<group>.<opt>
print("The value of MAAS_METADATA_URL is %s" % cfg.CONF.DEFAULT.maas_metadata_url)


result_log_file = open('../result.txt', 'w+')
result_log_file.write('METADATA_SERVICES = ' + cfg.CONF.DEFAULT.metadata_services + '\n\n')
result_log_file.write('MAAS_METADATA_URL = ' + cfg.CONF.DEFAULT.maas_metadata_url + '\n\n')
result_log_file.write('MAAS_OAUTH_CONSUMER_KEY = ' + cfg.CONF.DEFAULT.maas_oauth_consumer_key + '\n\n')
result_log_file.write('MAAS_OAUTH_CONSUMER_SECRET = ' + cfg.CONF.DEFAULT.maas_oauth_consumer_secret + '\n\n')
result_log_file.write('MAAS_OAUTH_TOKEN_KEY = ' + cfg.CONF.DEFAULT.maas_oauth_token_key + '\n\n')
result_log_file.write('MAAS_OAUTH_TOKEN_SECRET = ' + cfg.CONF.DEFAULT.maas_oauth_token_secret + '\n\n')
result_log_file.close()

result_log_file = open('result.txt', 'w+')
result_log_file.write('METADATA_SERVICES = ' + cfg.CONF.DEFAULT.metadata_services + '\n\n')
result_log_file.write('MAAS_METADATA_URL = ' + cfg.CONF.DEFAULT.maas_metadata_url + '\n\n')
result_log_file.write('MAAS_OAUTH_CONSUMER_KEY = ' + cfg.CONF.DEFAULT.maas_oauth_consumer_key + '\n\n')
result_log_file.write('MAAS_OAUTH_CONSUMER_SECRET = ' + cfg.CONF.DEFAULT.maas_oauth_consumer_secret + '\n\n')
result_log_file.write('MAAS_OAUTH_TOKEN_KEY = ' + cfg.CONF.DEFAULT.maas_oauth_token_key + '\n\n')
result_log_file.write('MAAS_OAUTH_TOKEN_SECRET = ' + cfg.CONF.DEFAULT.maas_oauth_token_secret + '\n\n')
result_log_file.close()