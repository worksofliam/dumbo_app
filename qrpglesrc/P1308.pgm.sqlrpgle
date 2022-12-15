**free

ctl-opt dftactgrp(*no);

dcl-pi P1308;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P280.rpgleinc'
/copy 'qrpgleref/P139.rpgleinc'
/copy 'qrpgleref/P179.rpgleinc'

dcl-ds theTable extname('T195') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T195 LIMIT 1;

theCharVar = 'Hello from P1308';
dsply theCharVar;
callp localProc();
P280();
P139();
P179();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1308 in the procedure';
end-proc;