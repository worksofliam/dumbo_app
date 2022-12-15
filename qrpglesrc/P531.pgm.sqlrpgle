**free

ctl-opt dftactgrp(*no);

dcl-pi P531;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P475.rpgleinc'
/copy 'qrpgleref/P250.rpgleinc'

dcl-ds theTable extname('T49') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T49 LIMIT 1;

theCharVar = 'Hello from P531';
dsply theCharVar;
callp localProc();
P76();
P475();
P250();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P531 in the procedure';
end-proc;