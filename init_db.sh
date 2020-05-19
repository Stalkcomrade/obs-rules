#!/bin/bash 
mysql -u root group_analytics < /Users/stlk/projects/obs-rules/DumpInitialData20190507VAN.sql

mysql -u root group_analytics < /Users/stlk/projects/obs-rules/Full_Dump20200504.sql