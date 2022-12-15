**free

ctl-opt dftactgrp(*no);

dcl-pi P2668;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2391.rpgleinc'
/copy 'qrpgleref/P1841.rpgleinc'
/copy 'qrpgleref/P206.rpgleinc'

dcl-ds theTable extname('T816') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T816 LIMIT 1;

theCharVar = 'Hello from P2668';
dsply theCharVar;
callp localProc();
P2391();
P1841();
P206();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2668 in the procedure';
end-proc;