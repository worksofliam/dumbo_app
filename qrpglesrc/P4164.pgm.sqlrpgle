**free

ctl-opt dftactgrp(*no);

dcl-pi P4164;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2691.rpgleinc'
/copy 'qrpgleref/P253.rpgleinc'
/copy 'qrpgleref/P1649.rpgleinc'

dcl-ds theTable extname('T1840') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1840 LIMIT 1;

theCharVar = 'Hello from P4164';
dsply theCharVar;
callp localProc();
P2691();
P253();
P1649();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4164 in the procedure';
end-proc;