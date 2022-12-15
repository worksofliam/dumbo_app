**free

ctl-opt dftactgrp(*no);

dcl-pi P1431;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P687.rpgleinc'
/copy 'qrpgleref/P787.rpgleinc'
/copy 'qrpgleref/P383.rpgleinc'

dcl-ds theTable extname('T350') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T350 LIMIT 1;

theCharVar = 'Hello from P1431';
dsply theCharVar;
callp localProc();
P687();
P787();
P383();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1431 in the procedure';
end-proc;