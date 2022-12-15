**free

ctl-opt dftactgrp(*no);

dcl-pi P397;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P192.rpgleinc'
/copy 'qrpgleref/P264.rpgleinc'
/copy 'qrpgleref/P213.rpgleinc'

dcl-ds theTable extname('T418') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T418 LIMIT 1;

theCharVar = 'Hello from P397';
dsply theCharVar;
callp localProc();
P192();
P264();
P213();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P397 in the procedure';
end-proc;