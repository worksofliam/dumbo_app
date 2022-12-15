**free

ctl-opt dftactgrp(*no);

dcl-pi P4563;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1513.rpgleinc'
/copy 'qrpgleref/P720.rpgleinc'
/copy 'qrpgleref/P1753.rpgleinc'

dcl-ds theTable extname('T1134') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1134 LIMIT 1;

theCharVar = 'Hello from P4563';
dsply theCharVar;
callp localProc();
P1513();
P720();
P1753();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4563 in the procedure';
end-proc;