**free

ctl-opt dftactgrp(*no);

dcl-pi P4516;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P413.rpgleinc'
/copy 'qrpgleref/P2706.rpgleinc'
/copy 'qrpgleref/P4359.rpgleinc'

dcl-ds theTable extname('T1247') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1247 LIMIT 1;

theCharVar = 'Hello from P4516';
dsply theCharVar;
callp localProc();
P413();
P2706();
P4359();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4516 in the procedure';
end-proc;