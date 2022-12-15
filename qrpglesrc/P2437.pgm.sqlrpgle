**free

ctl-opt dftactgrp(*no);

dcl-pi P2437;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P293.rpgleinc'
/copy 'qrpgleref/P2099.rpgleinc'
/copy 'qrpgleref/P1569.rpgleinc'

dcl-ds theTable extname('T729') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T729 LIMIT 1;

theCharVar = 'Hello from P2437';
dsply theCharVar;
callp localProc();
P293();
P2099();
P1569();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2437 in the procedure';
end-proc;