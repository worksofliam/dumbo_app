**free

ctl-opt dftactgrp(*no);

dcl-pi P253;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P194.rpgleinc'
/copy 'qrpgleref/P153.rpgleinc'
/copy 'qrpgleref/P180.rpgleinc'

dcl-ds theTable extname('T1498') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1498 LIMIT 1;

theCharVar = 'Hello from P253';
dsply theCharVar;
callp localProc();
P194();
P153();
P180();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P253 in the procedure';
end-proc;