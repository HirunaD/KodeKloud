#!/bin/bash
# Task 2: KodeKloud Day 2
# Create a temporary user 'mark' on App Server 3 with account expiry 2026-12-07

# SSH into App Server 3 as the authorized user 'banner'
# Password: BigGr33n
ssh banner@stapp03 << 'ENDSSH'
# Create user 'mark' with expiry date 2026-12-07
sudo useradd -e 2026-12-07 mark

# Verify the account expiry
sudo chage -l mark

# Exit App Server 3
exit
ENDSSH
