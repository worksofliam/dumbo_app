**free

ctl-opt dftactgrp(*no);

dcl-pi P1180;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P627.rpgleinc'
/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P1020.rpgleinc'

dcl-ds theTable extname('T252') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T252 LIMIT 1;

theCharVar = 'Hello from P1180';
dsply theCharVar;
callp localProc();
P627();
P214();
P1020();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1180 in the procedure';
end-proc;