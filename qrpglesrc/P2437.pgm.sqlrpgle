**free

ctl-opt dftactgrp(*no);

dcl-pi P2437;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1684.rpgleinc'
/copy 'qrpgleref/P707.rpgleinc'
/copy 'qrpgleref/P2406.rpgleinc'

dcl-ds theTable extname('T428') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T428 LIMIT 1;

theCharVar = 'Hello from P2437';
dsply theCharVar;
callp localProc();
P1684();
P707();
P2406();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2437 in the procedure';
end-proc;