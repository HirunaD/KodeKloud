#!/bin/bash
# Task 1: KodeKloud Day 1
# Create a user named 'jim' on App Server 1 with a non-interactive shell
# Non-interactive shell ensures the user cannot log in directly

# SSH into App Server 1 as the authorized user 'tony'
# Password: Ir0nM@n
ssh tony@stapp01 << 'ENDSSH'
# Create user 'jim' with /sbin/nologin shell
sudo useradd -s /sbin/nologin jim

# Verify the user was created and the shell is non-interactive
grep jim /etc/passwd

# Exit App Server 1
exit
ENDSSH
