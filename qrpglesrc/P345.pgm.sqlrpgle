**free

ctl-opt dftactgrp(*no);

dcl-pi P345;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P230.rpgleinc'
/copy 'qrpgleref/P222.rpgleinc'
/copy 'qrpgleref/P285.rpgleinc'

dcl-ds theTable extname('T733') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T733 LIMIT 1;

theCharVar = 'Hello from P345';
dsply theCharVar;
callp localProc();
P230();
P222();
P285();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P345 in the procedure';
end-proc;