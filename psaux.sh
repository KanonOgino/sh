#!/bin/bash

ps aux | grep -v '0:00' | grep -v 'root' | grep -v 'sshd' | grep -v '/usr' | grep -v 'tcsh'  
