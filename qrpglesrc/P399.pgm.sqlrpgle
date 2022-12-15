**free

ctl-opt dftactgrp(*no);

dcl-pi P399;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P70.rpgleinc'

dcl-ds theTable extname('T483') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T483 LIMIT 1;

theCharVar = 'Hello from P399';
dsply theCharVar;
callp localProc();
P56();
P146();
P70();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P399 in the procedure';
end-proc;