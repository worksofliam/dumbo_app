**free

ctl-opt dftactgrp(*no);

dcl-pi P604;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P364.rpgleinc'
/copy 'qrpgleref/P263.rpgleinc'
/copy 'qrpgleref/P343.rpgleinc'

dcl-ds theTable extname('T1646') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1646 LIMIT 1;

theCharVar = 'Hello from P604';
dsply theCharVar;
callp localProc();
P364();
P263();
P343();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P604 in the procedure';
end-proc;