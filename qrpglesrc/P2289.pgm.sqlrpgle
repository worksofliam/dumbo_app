**free

ctl-opt dftactgrp(*no);

dcl-pi P2289;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1134.rpgleinc'
/copy 'qrpgleref/P379.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'

dcl-ds theTable extname('T369') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T369 LIMIT 1;

theCharVar = 'Hello from P2289';
dsply theCharVar;
callp localProc();
P1134();
P379();
P69();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2289 in the procedure';
end-proc;