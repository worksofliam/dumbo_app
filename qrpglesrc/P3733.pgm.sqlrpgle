**free

ctl-opt dftactgrp(*no);

dcl-pi P3733;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2849.rpgleinc'
/copy 'qrpgleref/P3560.rpgleinc'
/copy 'qrpgleref/P496.rpgleinc'

dcl-ds theTable extname('T297') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T297 LIMIT 1;

theCharVar = 'Hello from P3733';
dsply theCharVar;
callp localProc();
P2849();
P3560();
P496();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3733 in the procedure';
end-proc;