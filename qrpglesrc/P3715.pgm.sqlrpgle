**free

ctl-opt dftactgrp(*no);

dcl-pi P3715;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P787.rpgleinc'
/copy 'qrpgleref/P3481.rpgleinc'
/copy 'qrpgleref/P858.rpgleinc'

dcl-ds theTable extname('T1712') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1712 LIMIT 1;

theCharVar = 'Hello from P3715';
dsply theCharVar;
callp localProc();
P787();
P3481();
P858();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3715 in the procedure';
end-proc;