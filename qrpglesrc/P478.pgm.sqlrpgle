**free

ctl-opt dftactgrp(*no);

dcl-pi P478;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P384.rpgleinc'
/copy 'qrpgleref/P394.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'

dcl-ds theTable extname('T60') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T60 LIMIT 1;

theCharVar = 'Hello from P478';
dsply theCharVar;
callp localProc();
P384();
P394();
P123();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P478 in the procedure';
end-proc;