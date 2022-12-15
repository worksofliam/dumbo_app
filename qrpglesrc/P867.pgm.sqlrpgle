**free

ctl-opt dftactgrp(*no);

dcl-pi P867;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P566.rpgleinc'
/copy 'qrpgleref/P417.rpgleinc'
/copy 'qrpgleref/P780.rpgleinc'

dcl-ds theTable extname('T1537') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1537 LIMIT 1;

theCharVar = 'Hello from P867';
dsply theCharVar;
callp localProc();
P566();
P417();
P780();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P867 in the procedure';
end-proc;