**free

ctl-opt dftactgrp(*no);

dcl-pi P3618;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1697.rpgleinc'
/copy 'qrpgleref/P2966.rpgleinc'
/copy 'qrpgleref/P253.rpgleinc'

dcl-ds theTable extname('T1285') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1285 LIMIT 1;

theCharVar = 'Hello from P3618';
dsply theCharVar;
callp localProc();
P1697();
P2966();
P253();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3618 in the procedure';
end-proc;