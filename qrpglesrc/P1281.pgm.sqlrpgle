**free

ctl-opt dftactgrp(*no);

dcl-pi P1281;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P408.rpgleinc'
/copy 'qrpgleref/P390.rpgleinc'
/copy 'qrpgleref/P1150.rpgleinc'

dcl-ds theTable extname('T1527') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1527 LIMIT 1;

theCharVar = 'Hello from P1281';
dsply theCharVar;
callp localProc();
P408();
P390();
P1150();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1281 in the procedure';
end-proc;