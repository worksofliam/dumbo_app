**free

ctl-opt dftactgrp(*no);

dcl-pi P896;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P796.rpgleinc'
/copy 'qrpgleref/P402.rpgleinc'
/copy 'qrpgleref/P619.rpgleinc'

dcl-ds theTable extname('T1068') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1068 LIMIT 1;

theCharVar = 'Hello from P896';
dsply theCharVar;
callp localProc();
P796();
P402();
P619();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P896 in the procedure';
end-proc;