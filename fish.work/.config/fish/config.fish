eval (python -m virtualfish)

# Virtualfish terminal prefix
if set -q VIRTUAL_ENV
    echo -n -s (set_color -b blue white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
end

# Vi Mode
fish_vi_key_bindings

# Gurobi
set -g -x GUROBI_HOME /opt/gurobi800/linux64
set -g -x GUROBI_LIBRARY $GUROBI_HOME/lib
set -g -x GUROBI_INCLUDE_DIR $GUROBI_HOME/include
set -g -x LIBRARY_PATH $LIBRARY_PATH $GUROBI_HOME/lib
set -g -x LD_LIBRARY_PATH $LD_LIBRARY_PATH $GUROBI_HOME/lib
set -g -x GRB_LICENSE_FILE $GUROBI_HOME/../gurobi.lic
set -g -x GUROBI_LIB gurobi80

# CPlex
set -g -x CPLEX_HOME /opt/cplex1262
set -g -x LD_LIBRARY_PATH $LD_LIBRARY_PATH $CPLEX_HOME/lib

# CoinCLP
set -g -x COINCLP_HOME /opt/coin-Clp
set -g -x COIN_CLP_LIBRARY $COINCLP_HOME/lib
set -g -x LD_LIBRARY_PATH $LD_LIBRARY_PATH $COINCLP_HOME/lib
