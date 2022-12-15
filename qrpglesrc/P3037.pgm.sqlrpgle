**free

ctl-opt dftactgrp(*no);

dcl-pi P3037;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P755.rpgleinc'
/copy 'qrpgleref/P2192.rpgleinc'
/copy 'qrpgleref/P726.rpgleinc'

dcl-ds theTable extname('T1473') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1473 LIMIT 1;

theCharVar = 'Hello from P3037';
dsply theCharVar;
callp localProc();
P755();
P2192();
P726();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3037 in the procedure';
end-proc;