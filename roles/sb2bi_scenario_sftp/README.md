Role sb2bi_scenario_sftp
==========================

This role will imports base SFG configurations to be used for the SFTP demo scenario.  It leverages resources that are created during a manual bootstrap import (SSH Host Key, SFTP adapter, Resource Import FSA, b2bapi user) so expects them to be present.

The role will create a security context for the resource import FSA then copy an xml file (sfgSFTPDemoScenario.xml) into the B2Bi ASI pod and drop it in /tmp/resourceImport, where the bootstrap resource import FSA will automatically import it.

Role Variables
--------------
Environment variables for this role:

| Environment Variable          | Default Value        | Required | Description                                      |
|-------------------------------|----------------------|----------|--------------------------------------------------|
| SI_INSTANCEID                 | N/A                  | Yes      | Instance ID for SB2BI application                |
