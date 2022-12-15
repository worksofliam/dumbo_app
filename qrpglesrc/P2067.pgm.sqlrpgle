**free

ctl-opt dftactgrp(*no);

dcl-pi P2067;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1459.rpgleinc'
/copy 'qrpgleref/P240.rpgleinc'
/copy 'qrpgleref/P1792.rpgleinc'

dcl-ds theTable extname('T1153') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1153 LIMIT 1;

theCharVar = 'Hello from P2067';
dsply theCharVar;
callp localProc();
P1459();
P240();
P1792();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2067 in the procedure';
end-proc;