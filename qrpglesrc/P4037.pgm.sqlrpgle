**free

ctl-opt dftactgrp(*no);

dcl-pi P4037;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P568.rpgleinc'
/copy 'qrpgleref/P753.rpgleinc'
/copy 'qrpgleref/P3496.rpgleinc'

dcl-ds theTable extname('T468') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T468 LIMIT 1;

theCharVar = 'Hello from P4037';
dsply theCharVar;
callp localProc();
P568();
P753();
P3496();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4037 in the procedure';
end-proc;