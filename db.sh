#!/bin/bash -eu

mysql -h $(hostname -i) -P 3307 -u root test
