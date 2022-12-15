**free

ctl-opt dftactgrp(*no);

dcl-pi P1453;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P370.rpgleinc'
/copy 'qrpgleref/P673.rpgleinc'
/copy 'qrpgleref/P733.rpgleinc'

dcl-ds theTable extname('T1818') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1818 LIMIT 1;

theCharVar = 'Hello from P1453';
dsply theCharVar;
callp localProc();
P370();
P673();
P733();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1453 in the procedure';
end-proc;