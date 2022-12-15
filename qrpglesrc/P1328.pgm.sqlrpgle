**free

ctl-opt dftactgrp(*no);

dcl-pi P1328;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P844.rpgleinc'
/copy 'qrpgleref/P1016.rpgleinc'
/copy 'qrpgleref/P476.rpgleinc'

dcl-ds theTable extname('T1078') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1078 LIMIT 1;

theCharVar = 'Hello from P1328';
dsply theCharVar;
callp localProc();
P844();
P1016();
P476();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1328 in the procedure';
end-proc;