#!/usr/bin/env bash
# use puppet to make changes to configuration

file { 'ect/ssh/ssh_cofig':
        ensure => present,

content =>"

	#SSH client configuration
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
	",

}
