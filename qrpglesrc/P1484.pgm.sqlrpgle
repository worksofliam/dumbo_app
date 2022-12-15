**free

ctl-opt dftactgrp(*no);

dcl-pi P1484;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P439.rpgleinc'
/copy 'qrpgleref/P664.rpgleinc'
/copy 'qrpgleref/P867.rpgleinc'

dcl-ds theTable extname('T1511') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1511 LIMIT 1;

theCharVar = 'Hello from P1484';
dsply theCharVar;
callp localProc();
P439();
P664();
P867();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1484 in the procedure';
end-proc;