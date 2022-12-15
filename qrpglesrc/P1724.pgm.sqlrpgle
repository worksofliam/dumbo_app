**free

ctl-opt dftactgrp(*no);

dcl-pi P1724;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P178.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P968.rpgleinc'

dcl-ds theTable extname('T1731') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1731 LIMIT 1;

theCharVar = 'Hello from P1724';
dsply theCharVar;
callp localProc();
P178();
P98();
P968();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1724 in the procedure';
end-proc;