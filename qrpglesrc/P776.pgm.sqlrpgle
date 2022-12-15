**free

ctl-opt dftactgrp(*no);

dcl-pi P776;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P731.rpgleinc'
/copy 'qrpgleref/P729.rpgleinc'
/copy 'qrpgleref/P555.rpgleinc'

dcl-ds theTable extname('T1469') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1469 LIMIT 1;

theCharVar = 'Hello from P776';
dsply theCharVar;
callp localProc();
P731();
P729();
P555();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P776 in the procedure';
end-proc;