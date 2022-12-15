**free

ctl-opt dftactgrp(*no);

dcl-pi P724;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P193.rpgleinc'
/copy 'qrpgleref/P190.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'

dcl-ds theTable extname('T9') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T9 LIMIT 1;

theCharVar = 'Hello from P724';
dsply theCharVar;
callp localProc();
P193();
P190();
P181();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P724 in the procedure';
end-proc;