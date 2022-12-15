**free

ctl-opt dftactgrp(*no);

dcl-pi P3011;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2190.rpgleinc'
/copy 'qrpgleref/P2221.rpgleinc'
/copy 'qrpgleref/P969.rpgleinc'

dcl-ds theTable extname('T347') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T347 LIMIT 1;

theCharVar = 'Hello from P3011';
dsply theCharVar;
callp localProc();
P2190();
P2221();
P969();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3011 in the procedure';
end-proc;