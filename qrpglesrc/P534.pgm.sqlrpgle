**free

ctl-opt dftactgrp(*no);

dcl-pi P534;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P487.rpgleinc'
/copy 'qrpgleref/P384.rpgleinc'
/copy 'qrpgleref/P196.rpgleinc'

dcl-ds theTable extname('T797') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T797 LIMIT 1;

theCharVar = 'Hello from P534';
dsply theCharVar;
callp localProc();
P487();
P384();
P196();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P534 in the procedure';
end-proc;