# THIS IS AN EXAMPLE. USING THIS CODE WILL GIVE US ACCESS TO YOUR SERVERS
# PLEASE READ THE README TO LEARN HOW TO USE THIS FILE PROPERLY.

class users::listexample {
#TODO: DRY on group really being $name

  $defaultgroups = ['users']
  $admingroups = ['admin', 'sudo']

  @account { 'tad':
    group => 'tad',
    fullname => 'Tom Farrow',
    ingroups => $admingroups,
    authorizedkey => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC+CplsmiLlLzv432y5FD4vQugqsE65pTCcqRIledrLgtsHrLyG8A/aeUhN+lYMSyRZF1yvJgYzxHCct5bDide78G46mFG0al1U082+tSPAnkexP/DKFCDuVZSeuuvpD4W+zxxdhPTGoshcoMw7862m5vstMUCcJoSBXrqBZ2zmnmKWM0HoNGuPjQDrebaUd6fNKcGT5YfSB+ItJAN3wGNdLNG3GzN7NN7xhmH59GaAfPXYzRBq5Oees0c87qHphTiHzUzKP1X9sY39aqy6wGccNjhK2g6Jee2LYSyUcQL8C5gEsag3aA3PAj4hzM/9DyjiIsD79p/IukAnL/woJS8V',
    keycomment => 'tom@mozilla.org.uk',
    password   => '$1$6ebKVAQX$tPQZnnH6VvrzFCHqxIWVQ0',   # This is my real password. I'm not that stupid. We keep our secrets locally on the server
  }

}
