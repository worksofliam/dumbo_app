**free

ctl-opt dftactgrp(*no);

dcl-pi P2358;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P480.rpgleinc'
/copy 'qrpgleref/P1183.rpgleinc'
/copy 'qrpgleref/P1209.rpgleinc'

dcl-ds theTable extname('T1478') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1478 LIMIT 1;

theCharVar = 'Hello from P2358';
dsply theCharVar;
callp localProc();
P480();
P1183();
P1209();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2358 in the procedure';
end-proc;