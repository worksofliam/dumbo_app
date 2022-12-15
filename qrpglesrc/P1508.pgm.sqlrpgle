**free

ctl-opt dftactgrp(*no);

dcl-pi P1508;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1086.rpgleinc'
/copy 'qrpgleref/P807.rpgleinc'
/copy 'qrpgleref/P875.rpgleinc'

dcl-ds theTable extname('T1531') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1531 LIMIT 1;

theCharVar = 'Hello from P1508';
dsply theCharVar;
callp localProc();
P1086();
P807();
P875();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1508 in the procedure';
end-proc;