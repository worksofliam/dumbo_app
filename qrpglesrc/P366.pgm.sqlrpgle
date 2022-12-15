**free

ctl-opt dftactgrp(*no);

dcl-pi P366;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P310.rpgleinc'
/copy 'qrpgleref/P343.rpgleinc'

dcl-ds theTable extname('T138') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T138 LIMIT 1;

theCharVar = 'Hello from P366';
dsply theCharVar;
callp localProc();
P101();
P310();
P343();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P366 in the procedure';
end-proc;