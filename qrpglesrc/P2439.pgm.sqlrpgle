**free

ctl-opt dftactgrp(*no);

dcl-pi P2439;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1447.rpgleinc'
/copy 'qrpgleref/P1097.rpgleinc'
/copy 'qrpgleref/P1384.rpgleinc'

dcl-ds theTable extname('T937') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T937 LIMIT 1;

theCharVar = 'Hello from P2439';
dsply theCharVar;
callp localProc();
P1447();
P1097();
P1384();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2439 in the procedure';
end-proc;