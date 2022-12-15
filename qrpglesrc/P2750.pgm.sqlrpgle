**free

ctl-opt dftactgrp(*no);

dcl-pi P2750;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P500.rpgleinc'
/copy 'qrpgleref/P2539.rpgleinc'

dcl-ds theTable extname('T1066') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1066 LIMIT 1;

theCharVar = 'Hello from P2750';
dsply theCharVar;
callp localProc();
P13();
P500();
P2539();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2750 in the procedure';
end-proc;