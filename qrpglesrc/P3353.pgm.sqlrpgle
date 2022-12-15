**free

ctl-opt dftactgrp(*no);

dcl-pi P3353;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P966.rpgleinc'
/copy 'qrpgleref/P2783.rpgleinc'
/copy 'qrpgleref/P277.rpgleinc'

dcl-ds theTable extname('T1056') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1056 LIMIT 1;

theCharVar = 'Hello from P3353';
dsply theCharVar;
callp localProc();
P966();
P2783();
P277();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3353 in the procedure';
end-proc;