**free

ctl-opt dftactgrp(*no);

dcl-pi P1399;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P523.rpgleinc'
/copy 'qrpgleref/P499.rpgleinc'
/copy 'qrpgleref/P991.rpgleinc'

dcl-ds theTable extname('T773') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T773 LIMIT 1;

theCharVar = 'Hello from P1399';
dsply theCharVar;
callp localProc();
P523();
P499();
P991();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1399 in the procedure';
end-proc;