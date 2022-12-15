**free

ctl-opt dftactgrp(*no);

dcl-pi P526;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P355.rpgleinc'
/copy 'qrpgleref/P363.rpgleinc'

dcl-ds theTable extname('T1597') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1597 LIMIT 1;

theCharVar = 'Hello from P526';
dsply theCharVar;
callp localProc();
P142();
P355();
P363();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P526 in the procedure';
end-proc;