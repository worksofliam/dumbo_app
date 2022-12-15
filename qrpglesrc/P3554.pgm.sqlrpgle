**free

ctl-opt dftactgrp(*no);

dcl-pi P3554;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1449.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'

dcl-ds theTable extname('T1170') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1170 LIMIT 1;

theCharVar = 'Hello from P3554';
dsply theCharVar;
callp localProc();
P1449();
P187();
P98();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3554 in the procedure';
end-proc;