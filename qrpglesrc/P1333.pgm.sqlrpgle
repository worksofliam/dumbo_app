**free

ctl-opt dftactgrp(*no);

dcl-pi P1333;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P933.rpgleinc'
/copy 'qrpgleref/P479.rpgleinc'
/copy 'qrpgleref/P1235.rpgleinc'

dcl-ds theTable extname('T1108') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1108 LIMIT 1;

theCharVar = 'Hello from P1333';
dsply theCharVar;
callp localProc();
P933();
P479();
P1235();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1333 in the procedure';
end-proc;