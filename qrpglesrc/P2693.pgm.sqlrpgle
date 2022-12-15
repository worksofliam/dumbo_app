**free

ctl-opt dftactgrp(*no);

dcl-pi P2693;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P969.rpgleinc'
/copy 'qrpgleref/P1120.rpgleinc'
/copy 'qrpgleref/P1330.rpgleinc'

dcl-ds theTable extname('T1557') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1557 LIMIT 1;

theCharVar = 'Hello from P2693';
dsply theCharVar;
callp localProc();
P969();
P1120();
P1330();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2693 in the procedure';
end-proc;