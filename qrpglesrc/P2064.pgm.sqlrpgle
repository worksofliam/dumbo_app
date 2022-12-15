**free

ctl-opt dftactgrp(*no);

dcl-pi P2064;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P491.rpgleinc'
/copy 'qrpgleref/P364.rpgleinc'
/copy 'qrpgleref/P1538.rpgleinc'

dcl-ds theTable extname('T1180') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1180 LIMIT 1;

theCharVar = 'Hello from P2064';
dsply theCharVar;
callp localProc();
P491();
P364();
P1538();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2064 in the procedure';
end-proc;