**free

ctl-opt dftactgrp(*no);

dcl-pi P808;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P411.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'

dcl-ds theTable extname('T1623') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1623 LIMIT 1;

theCharVar = 'Hello from P808';
dsply theCharVar;
callp localProc();
P38();
P411();
P30();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P808 in the procedure';
end-proc;