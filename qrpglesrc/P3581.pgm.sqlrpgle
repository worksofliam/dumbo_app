**free

ctl-opt dftactgrp(*no);

dcl-pi P3581;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P702.rpgleinc'
/copy 'qrpgleref/P2922.rpgleinc'
/copy 'qrpgleref/P1150.rpgleinc'

dcl-ds theTable extname('T112') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T112 LIMIT 1;

theCharVar = 'Hello from P3581';
dsply theCharVar;
callp localProc();
P702();
P2922();
P1150();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3581 in the procedure';
end-proc;