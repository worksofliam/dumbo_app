**free

ctl-opt dftactgrp(*no);

dcl-pi P2513;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1682.rpgleinc'
/copy 'qrpgleref/P2468.rpgleinc'
/copy 'qrpgleref/P1229.rpgleinc'

dcl-ds theTable extname('T1654') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1654 LIMIT 1;

theCharVar = 'Hello from P2513';
dsply theCharVar;
callp localProc();
P1682();
P2468();
P1229();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2513 in the procedure';
end-proc;