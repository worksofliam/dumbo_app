**free

ctl-opt dftactgrp(*no);

dcl-pi P918;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P436.rpgleinc'
/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P895.rpgleinc'

dcl-ds theTable extname('T1020') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1020 LIMIT 1;

theCharVar = 'Hello from P918';
dsply theCharVar;
callp localProc();
P436();
P182();
P895();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P918 in the procedure';
end-proc;