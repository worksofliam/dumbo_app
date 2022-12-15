**free

ctl-opt dftactgrp(*no);

dcl-pi P468;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P227.rpgleinc'
/copy 'qrpgleref/P338.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'

dcl-ds theTable extname('T372') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T372 LIMIT 1;

theCharVar = 'Hello from P468';
dsply theCharVar;
callp localProc();
P227();
P338();
P146();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P468 in the procedure';
end-proc;