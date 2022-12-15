**free

ctl-opt dftactgrp(*no);

dcl-pi P833;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P446.rpgleinc'
/copy 'qrpgleref/P197.rpgleinc'
/copy 'qrpgleref/P190.rpgleinc'

dcl-ds theTable extname('T1515') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1515 LIMIT 1;

theCharVar = 'Hello from P833';
dsply theCharVar;
callp localProc();
P446();
P197();
P190();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P833 in the procedure';
end-proc;