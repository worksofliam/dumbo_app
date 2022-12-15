**free

ctl-opt dftactgrp(*no);

dcl-pi P2664;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1255.rpgleinc'
/copy 'qrpgleref/P2500.rpgleinc'
/copy 'qrpgleref/P1462.rpgleinc'

dcl-ds theTable extname('T1854') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1854 LIMIT 1;

theCharVar = 'Hello from P2664';
dsply theCharVar;
callp localProc();
P1255();
P2500();
P1462();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2664 in the procedure';
end-proc;