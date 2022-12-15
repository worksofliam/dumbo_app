**free

ctl-opt dftactgrp(*no);

dcl-pi P1099;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P192.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P922.rpgleinc'

dcl-ds theTable extname('T301') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T301 LIMIT 1;

theCharVar = 'Hello from P1099';
dsply theCharVar;
callp localProc();
P192();
P7();
P922();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1099 in the procedure';
end-proc;