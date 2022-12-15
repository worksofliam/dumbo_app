**free

ctl-opt dftactgrp(*no);

dcl-pi P1630;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1521.rpgleinc'
/copy 'qrpgleref/P178.rpgleinc'
/copy 'qrpgleref/P88.rpgleinc'

dcl-ds theTable extname('T1218') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1218 LIMIT 1;

theCharVar = 'Hello from P1630';
dsply theCharVar;
callp localProc();
P1521();
P178();
P88();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1630 in the procedure';
end-proc;