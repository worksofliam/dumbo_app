**free

ctl-opt dftactgrp(*no);

dcl-pi P821;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P99.rpgleinc'
/copy 'qrpgleref/P561.rpgleinc'
/copy 'qrpgleref/P686.rpgleinc'

dcl-ds theTable extname('T697') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T697 LIMIT 1;

theCharVar = 'Hello from P821';
dsply theCharVar;
callp localProc();
P99();
P561();
P686();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P821 in the procedure';
end-proc;