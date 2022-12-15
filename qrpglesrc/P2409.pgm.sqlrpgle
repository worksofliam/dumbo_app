**free

ctl-opt dftactgrp(*no);

dcl-pi P2409;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P1199.rpgleinc'
/copy 'qrpgleref/P305.rpgleinc'

dcl-ds theTable extname('T37') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T37 LIMIT 1;

theCharVar = 'Hello from P2409';
dsply theCharVar;
callp localProc();
P41();
P1199();
P305();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2409 in the procedure';
end-proc;