**free

ctl-opt dftactgrp(*no);

dcl-pi P1571;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1569.rpgleinc'
/copy 'qrpgleref/P1281.rpgleinc'
/copy 'qrpgleref/P760.rpgleinc'

dcl-ds theTable extname('T1068') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1068 LIMIT 1;

theCharVar = 'Hello from P1571';
dsply theCharVar;
callp localProc();
P1569();
P1281();
P760();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1571 in the procedure';
end-proc;