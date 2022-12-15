**free

ctl-opt dftactgrp(*no);

dcl-pi P123;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'

dcl-ds theTable extname('T402') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T402 LIMIT 1;

theCharVar = 'Hello from P123';
dsply theCharVar;
callp localProc();
P108();
P69();
P84();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P123 in the procedure';
end-proc;