**free

ctl-opt dftactgrp(*no);

dcl-pi P733;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P687.rpgleinc'
/copy 'qrpgleref/P681.rpgleinc'
/copy 'qrpgleref/P180.rpgleinc'

dcl-ds theTable extname('T143') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T143 LIMIT 1;

theCharVar = 'Hello from P733';
dsply theCharVar;
callp localProc();
P687();
P681();
P180();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P733 in the procedure';
end-proc;