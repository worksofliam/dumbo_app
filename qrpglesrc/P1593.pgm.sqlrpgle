**free

ctl-opt dftactgrp(*no);

dcl-pi P1593;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P364.rpgleinc'
/copy 'qrpgleref/P1467.rpgleinc'
/copy 'qrpgleref/P890.rpgleinc'

dcl-ds theTable extname('T422') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T422 LIMIT 1;

theCharVar = 'Hello from P1593';
dsply theCharVar;
callp localProc();
P364();
P1467();
P890();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1593 in the procedure';
end-proc;