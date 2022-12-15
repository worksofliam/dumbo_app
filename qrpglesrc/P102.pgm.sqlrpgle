**free

ctl-opt dftactgrp(*no);

dcl-pi P102;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P56.rpgleinc'

dcl-ds theTable extname('T906') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T906 LIMIT 1;

theCharVar = 'Hello from P102';
dsply theCharVar;
callp localProc();
P70();
P39();
P56();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P102 in the procedure';
end-proc;