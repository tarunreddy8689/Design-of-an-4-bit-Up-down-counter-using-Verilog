export DESIGN_NAME = updown_counter
export PLATFORM    = nangate45

export VERILOG_FILES = $(DESIGN_HOME)/src/$(DESIGN_NAME)/updown_counter.v
export SDC_FILE      = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NAME)/constraint.sdc
#export ABC_AREA      = 1
export ABC_SPEED      = 1
# Adders degrade GCD
export ADDER_MAP_FILE :=

#export CORE_UTILIZATION ?= 75
export DIE_AREA = 0 0 45 45
export CORE_AREA = 5 5 40 40
export PLACE_DENSITY_LB_ADDON = 0.2
export TNS_END_PERCENT        = 100
export CELL_PAD_IN_SITES_DETAIL_PLACEMENT = 2
export CELL_PAD_IN_SITES_GLOBAL_PLACEMENT = 4
#export REMOVE_CELLS_FOR_EQY   = TAPCELL*
export PDN_TCL = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NAME)/my_pdn.tcl

