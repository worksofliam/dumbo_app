**free

ctl-opt dftactgrp(*no);

dcl-pi P4673;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1505.rpgleinc'
/copy 'qrpgleref/P188.rpgleinc'
/copy 'qrpgleref/P3675.rpgleinc'

dcl-ds theTable extname('T509') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T509 LIMIT 1;

theCharVar = 'Hello from P4673';
dsply theCharVar;
callp localProc();
P1505();
P188();
P3675();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4673 in the procedure';
end-proc;