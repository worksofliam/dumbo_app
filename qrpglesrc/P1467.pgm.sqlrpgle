**free

ctl-opt dftactgrp(*no);

dcl-pi P1467;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1350.rpgleinc'
/copy 'qrpgleref/P636.rpgleinc'
/copy 'qrpgleref/P1184.rpgleinc'

dcl-ds theTable extname('T1073') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1073 LIMIT 1;

theCharVar = 'Hello from P1467';
dsply theCharVar;
callp localProc();
P1350();
P636();
P1184();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1467 in the procedure';
end-proc;