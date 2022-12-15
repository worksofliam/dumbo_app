**free

ctl-opt dftactgrp(*no);

dcl-pi P2328;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1521.rpgleinc'
/copy 'qrpgleref/P1840.rpgleinc'
/copy 'qrpgleref/P1398.rpgleinc'

dcl-ds theTable extname('T663') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T663 LIMIT 1;

theCharVar = 'Hello from P2328';
dsply theCharVar;
callp localProc();
P1521();
P1840();
P1398();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2328 in the procedure';
end-proc;