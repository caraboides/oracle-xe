# Oracle XE

Tested on 64 bit Ubuntu 10.04

Download the [10g .deb](http://download.oracle.com/otn/linux/oracle10g/xe/10201/oracle-xe_10.2.0.1-1.0_i386.deb)

    $ vagrant up
    $ vagrant ssh
    $ dpkg -i --force-architecture /etc/home/Downloads/oracle-xe_10.2.0.1-1.0_i386.deb

To allow [access](http://192.168.15.21:8080/apex) from host machine

    $ sqlplus system/(password)
    > EXEC DBMS_XDB.SETLISTENERLOCALACCESS(FALSE);
    > quit;

Copyright (c) 2012 Darrin Holst. See LICENSE for details.
