**free

ctl-opt dftactgrp(*no);

dcl-pi P3994;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2354.rpgleinc'
/copy 'qrpgleref/P1471.rpgleinc'
/copy 'qrpgleref/P1916.rpgleinc'

dcl-ds theTable extname('T1369') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1369 LIMIT 1;

theCharVar = 'Hello from P3994';
dsply theCharVar;
callp localProc();
P2354();
P1471();
P1916();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3994 in the procedure';
end-proc;