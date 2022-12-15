**free

ctl-opt dftactgrp(*no);

dcl-pi P3379;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1800.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P1916.rpgleinc'

dcl-ds theTable extname('T260') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T260 LIMIT 1;

theCharVar = 'Hello from P3379';
dsply theCharVar;
callp localProc();
P1800();
P14();
P1916();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3379 in the procedure';
end-proc;