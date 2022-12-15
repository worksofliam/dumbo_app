**free

ctl-opt dftactgrp(*no);

dcl-pi P804;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P200.rpgleinc'
/copy 'qrpgleref/P341.rpgleinc'

dcl-ds theTable extname('T66') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T66 LIMIT 1;

theCharVar = 'Hello from P804';
dsply theCharVar;
callp localProc();
P2();
P200();
P341();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P804 in the procedure';
end-proc;