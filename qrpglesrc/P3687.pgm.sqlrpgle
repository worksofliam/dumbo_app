**free

ctl-opt dftactgrp(*no);

dcl-pi P3687;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2585.rpgleinc'
/copy 'qrpgleref/P1023.rpgleinc'
/copy 'qrpgleref/P343.rpgleinc'

dcl-ds theTable extname('T842') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T842 LIMIT 1;

theCharVar = 'Hello from P3687';
dsply theCharVar;
callp localProc();
P2585();
P1023();
P343();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3687 in the procedure';
end-proc;