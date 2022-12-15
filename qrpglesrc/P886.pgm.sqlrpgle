**free

ctl-opt dftactgrp(*no);

dcl-pi P886;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P718.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'

dcl-ds theTable extname('T1033') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1033 LIMIT 1;

theCharVar = 'Hello from P886';
dsply theCharVar;
callp localProc();
P33();
P718();
P23();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P886 in the procedure';
end-proc;