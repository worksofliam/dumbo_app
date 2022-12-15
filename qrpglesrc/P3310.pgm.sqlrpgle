**free

ctl-opt dftactgrp(*no);

dcl-pi P3310;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2916.rpgleinc'
/copy 'qrpgleref/P1607.rpgleinc'
/copy 'qrpgleref/P2243.rpgleinc'

dcl-ds theTable extname('T368') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T368 LIMIT 1;

theCharVar = 'Hello from P3310';
dsply theCharVar;
callp localProc();
P2916();
P1607();
P2243();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3310 in the procedure';
end-proc;