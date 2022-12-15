**free

ctl-opt dftactgrp(*no);

dcl-pi P1802;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P918.rpgleinc'
/copy 'qrpgleref/P395.rpgleinc'
/copy 'qrpgleref/P1254.rpgleinc'

dcl-ds theTable extname('T27') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T27 LIMIT 1;

theCharVar = 'Hello from P1802';
dsply theCharVar;
callp localProc();
P918();
P395();
P1254();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1802 in the procedure';
end-proc;