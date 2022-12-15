**free

ctl-opt dftactgrp(*no);

dcl-pi P3355;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1547.rpgleinc'
/copy 'qrpgleref/P1382.rpgleinc'
/copy 'qrpgleref/P2948.rpgleinc'

dcl-ds theTable extname('T1236') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1236 LIMIT 1;

theCharVar = 'Hello from P3355';
dsply theCharVar;
callp localProc();
P1547();
P1382();
P2948();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3355 in the procedure';
end-proc;