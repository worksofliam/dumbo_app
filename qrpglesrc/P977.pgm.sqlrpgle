**free

ctl-opt dftactgrp(*no);

dcl-pi P977;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P580.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'
/copy 'qrpgleref/P753.rpgleinc'

dcl-ds theTable extname('T1834') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1834 LIMIT 1;

theCharVar = 'Hello from P977';
dsply theCharVar;
callp localProc();
P580();
P255();
P753();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P977 in the procedure';
end-proc;