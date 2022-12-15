**free

ctl-opt dftactgrp(*no);

dcl-pi P804;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P442.rpgleinc'
/copy 'qrpgleref/P140.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'

dcl-ds theTable extname('T1616') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1616 LIMIT 1;

theCharVar = 'Hello from P804';
dsply theCharVar;
callp localProc();
P442();
P140();
P95();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P804 in the procedure';
end-proc;