This project is one of two relating to generating a VHDL implementation of IBM's 1410 Data Processing System

cube1us/IBM1410SMS - This is a Visual C# application using a database to generate VHDL

cube1us/IBM1410FPGA - This project, is the generated VHDL itself, along with additional hand-coded VHDL components
to implement the IBM 1410 in an FPGA.

EVENTUALLY there will be a third project, a Visual C# application to provide the console, printer, card reader,
tape drives, disks (maybe), etc.  

As of 5/2/2021, the CPU is more or less complete, and can execute at least some instruactions.  The current
work that needs to be done is for emulating the console, communicating with a C# application over a USB-attached
high speed serial port.  The VHDL console needs a complete rework, to send BCD instead of ASCII as it does 
presently, and to be able to multiplex multiple IBM 1410 connections for devices over a single serial port.

See the individual project log entries to see where thing stand at present.