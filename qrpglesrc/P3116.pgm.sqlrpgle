**free

ctl-opt dftactgrp(*no);

dcl-pi P3116;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1581.rpgleinc'
/copy 'qrpgleref/P1462.rpgleinc'
/copy 'qrpgleref/P1573.rpgleinc'

dcl-ds theTable extname('T972') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T972 LIMIT 1;

theCharVar = 'Hello from P3116';
dsply theCharVar;
callp localProc();
P1581();
P1462();
P1573();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3116 in the procedure';
end-proc;