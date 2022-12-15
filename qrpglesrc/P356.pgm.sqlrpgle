**free

ctl-opt dftactgrp(*no);

dcl-pi P356;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P343.rpgleinc'
/copy 'qrpgleref/P210.rpgleinc'
/copy 'qrpgleref/P325.rpgleinc'

dcl-ds theTable extname('T35') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T35 LIMIT 1;

theCharVar = 'Hello from P356';
dsply theCharVar;
callp localProc();
P343();
P210();
P325();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P356 in the procedure';
end-proc;