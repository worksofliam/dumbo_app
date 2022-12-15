**free

ctl-opt dftactgrp(*no);

dcl-pi P974;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P890.rpgleinc'
/copy 'qrpgleref/P758.rpgleinc'
/copy 'qrpgleref/P504.rpgleinc'

dcl-ds theTable extname('T392') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T392 LIMIT 1;

theCharVar = 'Hello from P974';
dsply theCharVar;
callp localProc();
P890();
P758();
P504();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P974 in the procedure';
end-proc;