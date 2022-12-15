**free

ctl-opt dftactgrp(*no);

dcl-pi P564;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P314.rpgleinc'
/copy 'qrpgleref/P259.rpgleinc'
/copy 'qrpgleref/P192.rpgleinc'

dcl-ds theTable extname('T237') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T237 LIMIT 1;

theCharVar = 'Hello from P564';
dsply theCharVar;
callp localProc();
P314();
P259();
P192();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P564 in the procedure';
end-proc;