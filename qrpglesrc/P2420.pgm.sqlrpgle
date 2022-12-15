**free

ctl-opt dftactgrp(*no);

dcl-pi P2420;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1396.rpgleinc'
/copy 'qrpgleref/P1697.rpgleinc'
/copy 'qrpgleref/P2192.rpgleinc'

dcl-ds theTable extname('T1075') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1075 LIMIT 1;

theCharVar = 'Hello from P2420';
dsply theCharVar;
callp localProc();
P1396();
P1697();
P2192();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2420 in the procedure';
end-proc;