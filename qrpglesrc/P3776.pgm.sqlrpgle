**free

ctl-opt dftactgrp(*no);

dcl-pi P3776;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P429.rpgleinc'
/copy 'qrpgleref/P2635.rpgleinc'
/copy 'qrpgleref/P2419.rpgleinc'

dcl-ds theTable extname('T1873') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1873 LIMIT 1;

theCharVar = 'Hello from P3776';
dsply theCharVar;
callp localProc();
P429();
P2635();
P2419();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3776 in the procedure';
end-proc;