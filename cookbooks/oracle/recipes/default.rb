package "libaio-dev"
package "bc"
package "ia32-libs"

execute "update_bashrc" do
  not_if "grep -q ORACLE_HOME /etc/bash.bashrc"
  command <<-CMD
    echo '
    export ORACLE_HOME=/usr/lib/oracle/xe/app/oracle/product/10.2.0/server
    export ORACLE_SID=XE
    export PATH=$PATH:$ORACLE_HOME/bin' >> /etc/bash.bashrc
  CMD
end
