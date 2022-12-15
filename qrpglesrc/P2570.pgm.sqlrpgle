**free

ctl-opt dftactgrp(*no);

dcl-pi P2570;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1548.rpgleinc'
/copy 'qrpgleref/P1397.rpgleinc'
/copy 'qrpgleref/P676.rpgleinc'

dcl-ds theTable extname('T1033') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1033 LIMIT 1;

theCharVar = 'Hello from P2570';
dsply theCharVar;
callp localProc();
P1548();
P1397();
P676();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2570 in the procedure';
end-proc;