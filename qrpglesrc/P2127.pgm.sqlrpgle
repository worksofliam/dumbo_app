**free

ctl-opt dftactgrp(*no);

dcl-pi P2127;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1978.rpgleinc'
/copy 'qrpgleref/P1174.rpgleinc'
/copy 'qrpgleref/P280.rpgleinc'

dcl-ds theTable extname('T1826') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1826 LIMIT 1;

theCharVar = 'Hello from P2127';
dsply theCharVar;
callp localProc();
P1978();
P1174();
P280();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2127 in the procedure';
end-proc;