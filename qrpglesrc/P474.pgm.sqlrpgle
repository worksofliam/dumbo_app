**free

ctl-opt dftactgrp(*no);

dcl-pi P474;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P391.rpgleinc'
/copy 'qrpgleref/P240.rpgleinc'
/copy 'qrpgleref/P468.rpgleinc'

dcl-ds theTable extname('T404') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T404 LIMIT 1;

theCharVar = 'Hello from P474';
dsply theCharVar;
callp localProc();
P391();
P240();
P468();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P474 in the procedure';
end-proc;