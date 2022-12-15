**free

ctl-opt dftactgrp(*no);

dcl-pi P1466;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P168.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'
/copy 'qrpgleref/P722.rpgleinc'

dcl-ds theTable extname('T1066') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1066 LIMIT 1;

theCharVar = 'Hello from P1466';
dsply theCharVar;
callp localProc();
P168();
P127();
P722();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1466 in the procedure';
end-proc;