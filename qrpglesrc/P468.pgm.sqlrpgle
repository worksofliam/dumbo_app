**free

ctl-opt dftactgrp(*no);

dcl-pi P468;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P197.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'
/copy 'qrpgleref/P343.rpgleinc'

dcl-ds theTable extname('T1623') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1623 LIMIT 1;

theCharVar = 'Hello from P468';
dsply theCharVar;
callp localProc();
P197();
P105();
P343();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P468 in the procedure';
end-proc;