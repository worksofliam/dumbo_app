**free

ctl-opt dftactgrp(*no);

dcl-pi P24;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'

dcl-ds theTable extname('T320') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T320 LIMIT 1;

theCharVar = 'Hello from P24';
dsply theCharVar;
callp localProc();
P17();
P11();
P14();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P24 in the procedure';
end-proc;