#!/bin/bash
cat $1_Dealer_schedule | awk -F" " '{print $1, $2, $5, $6}' | grep -i $2":00:00" | grep -i $3
