#!/usr/bin/env bash

# Start sleep commands in the background
sleep 10 &
sleep 20 &
sleep 30 &

# Wait for all background processes to complete
wait

echo "All sleep processes are done."

