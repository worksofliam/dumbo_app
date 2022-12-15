**free

ctl-opt dftactgrp(*no);

dcl-pi P2426;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2142.rpgleinc'
/copy 'qrpgleref/P300.rpgleinc'
/copy 'qrpgleref/P1656.rpgleinc'

dcl-ds theTable extname('T422') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T422 LIMIT 1;

theCharVar = 'Hello from P2426';
dsply theCharVar;
callp localProc();
P2142();
P300();
P1656();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2426 in the procedure';
end-proc;