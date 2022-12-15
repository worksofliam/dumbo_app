**free

ctl-opt dftactgrp(*no);

dcl-pi P3101;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3065.rpgleinc'
/copy 'qrpgleref/P2886.rpgleinc'
/copy 'qrpgleref/P1289.rpgleinc'

dcl-ds theTable extname('T1033') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1033 LIMIT 1;

theCharVar = 'Hello from P3101';
dsply theCharVar;
callp localProc();
P3065();
P2886();
P1289();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3101 in the procedure';
end-proc;