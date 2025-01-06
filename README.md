# VHDL Counter Race Condition

This repository demonstrates a potential race condition in a simple VHDL counter and its solution.

## Bug Description

A race condition can occur when the `enable` signal changes very close to a rising clock edge, potentially leading to unexpected counter behavior. The original code doesn't explicitly handle this scenario. 

## Solution

The improved VHDL code uses a synchronous process to update the counter value to avoid this race condition.