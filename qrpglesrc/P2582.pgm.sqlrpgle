**free

ctl-opt dftactgrp(*no);

dcl-pi P2582;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1284.rpgleinc'
/copy 'qrpgleref/P1385.rpgleinc'
/copy 'qrpgleref/P1494.rpgleinc'

dcl-ds theTable extname('T1057') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1057 LIMIT 1;

theCharVar = 'Hello from P2582';
dsply theCharVar;
callp localProc();
P1284();
P1385();
P1494();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2582 in the procedure';
end-proc;