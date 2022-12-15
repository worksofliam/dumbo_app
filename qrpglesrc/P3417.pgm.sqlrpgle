**free

ctl-opt dftactgrp(*no);

dcl-pi P3417;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3224.rpgleinc'
/copy 'qrpgleref/P2646.rpgleinc'
/copy 'qrpgleref/P1154.rpgleinc'

dcl-ds theTable extname('T1204') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1204 LIMIT 1;

theCharVar = 'Hello from P3417';
dsply theCharVar;
callp localProc();
P3224();
P2646();
P1154();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3417 in the procedure';
end-proc;