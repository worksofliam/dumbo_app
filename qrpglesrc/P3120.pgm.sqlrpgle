**free

ctl-opt dftactgrp(*no);

dcl-pi P3120;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P991.rpgleinc'
/copy 'qrpgleref/P1784.rpgleinc'
/copy 'qrpgleref/P2409.rpgleinc'

dcl-ds theTable extname('T463') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T463 LIMIT 1;

theCharVar = 'Hello from P3120';
dsply theCharVar;
callp localProc();
P991();
P1784();
P2409();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3120 in the procedure';
end-proc;