**free

ctl-opt dftactgrp(*no);

dcl-pi P124;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'

dcl-ds theTable extname('T884') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T884 LIMIT 1;

theCharVar = 'Hello from P124';
dsply theCharVar;
callp localProc();
P117();
P76();
P119();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P124 in the procedure';
end-proc;