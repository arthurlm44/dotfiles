#!/bin/bash
echo "I am restarting the server... it should take about 1 or 2 minutes."
ssh -tt 192.168.1.6 -- sudo reboot
