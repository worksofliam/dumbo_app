**free

ctl-opt dftactgrp(*no);

dcl-pi P245;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P133.rpgleinc'
/copy 'qrpgleref/P168.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'

dcl-ds theTable extname('T788') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T788 LIMIT 1;

theCharVar = 'Hello from P245';
dsply theCharVar;
callp localProc();
P133();
P168();
P76();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P245 in the procedure';
end-proc;