**free

ctl-opt dftactgrp(*no);

dcl-pi P2702;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1397.rpgleinc'
/copy 'qrpgleref/P969.rpgleinc'
/copy 'qrpgleref/P919.rpgleinc'

dcl-ds theTable extname('T1600') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1600 LIMIT 1;

theCharVar = 'Hello from P2702';
dsply theCharVar;
callp localProc();
P1397();
P969();
P919();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2702 in the procedure';
end-proc;