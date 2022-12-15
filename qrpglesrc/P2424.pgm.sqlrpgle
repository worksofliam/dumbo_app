**free

ctl-opt dftactgrp(*no);

dcl-pi P2424;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P213.rpgleinc'
/copy 'qrpgleref/P802.rpgleinc'
/copy 'qrpgleref/P1649.rpgleinc'

dcl-ds theTable extname('T516') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T516 LIMIT 1;

theCharVar = 'Hello from P2424';
dsply theCharVar;
callp localProc();
P213();
P802();
P1649();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2424 in the procedure';
end-proc;