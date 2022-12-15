**free

ctl-opt dftactgrp(*no);

dcl-pi P2529;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1606.rpgleinc'
/copy 'qrpgleref/P2247.rpgleinc'
/copy 'qrpgleref/P573.rpgleinc'

dcl-ds theTable extname('T801') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T801 LIMIT 1;

theCharVar = 'Hello from P2529';
dsply theCharVar;
callp localProc();
P1606();
P2247();
P573();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2529 in the procedure';
end-proc;