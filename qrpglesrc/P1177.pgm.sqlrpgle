**free

ctl-opt dftactgrp(*no);

dcl-pi P1177;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P737.rpgleinc'
/copy 'qrpgleref/P188.rpgleinc'
/copy 'qrpgleref/P627.rpgleinc'

dcl-ds theTable extname('T428') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T428 LIMIT 1;

theCharVar = 'Hello from P1177';
dsply theCharVar;
callp localProc();
P737();
P188();
P627();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1177 in the procedure';
end-proc;