#!/bin/bash

/ssh-chat/ssh-chat --bind=":22" --identity="/config/identity" --admin="/config/admin_keys" --allowlist="/config/authorized_keys" --motd="/config/motd" --log="/config/log"