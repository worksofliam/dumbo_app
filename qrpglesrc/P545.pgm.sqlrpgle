**free

ctl-opt dftactgrp(*no);

dcl-pi P545;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P499.rpgleinc'
/copy 'qrpgleref/P93.rpgleinc'

dcl-ds theTable extname('T258') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T258 LIMIT 1;

theCharVar = 'Hello from P545';
dsply theCharVar;
callp localProc();
P34();
P499();
P93();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P545 in the procedure';
end-proc;