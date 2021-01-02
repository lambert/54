#!/bin/sh
gnetlist -g vhdl -o control.vhdl ../gschem/54.001.00.01.01.sch
gnetlist -g vhdl -o timebase.vhdl ../gschem/54.001.00.01.11.sch
gnetlist -g vhdl -o addresscounter.vhdl ../gschem/54.001.00.01.12.sch
gnetlist -g vhdl -o fbdc.vhdl ../gschem/54.001.00.01.21.sch
gnetlist -g vhdl -o fbbc.vhdl ../gschem/54.001.00.01.22.sch
