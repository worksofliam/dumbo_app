**free

ctl-opt dftactgrp(*no);

dcl-pi P1732;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P353.rpgleinc'
/copy 'qrpgleref/P1091.rpgleinc'
/copy 'qrpgleref/P753.rpgleinc'

dcl-ds theTable extname('T1052') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1052 LIMIT 1;

theCharVar = 'Hello from P1732';
dsply theCharVar;
callp localProc();
P353();
P1091();
P753();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1732 in the procedure';
end-proc;