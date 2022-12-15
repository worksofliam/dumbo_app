**free

ctl-opt dftactgrp(*no);

dcl-pi P432;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P192.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P247.rpgleinc'

dcl-ds theTable extname('T1703') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1703 LIMIT 1;

theCharVar = 'Hello from P432';
dsply theCharVar;
callp localProc();
P192();
P2();
P247();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P432 in the procedure';
end-proc;