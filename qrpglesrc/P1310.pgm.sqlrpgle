**free

ctl-opt dftactgrp(*no);

dcl-pi P1310;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1086.rpgleinc'
/copy 'qrpgleref/P454.rpgleinc'
/copy 'qrpgleref/P348.rpgleinc'

dcl-ds theTable extname('T63') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T63 LIMIT 1;

theCharVar = 'Hello from P1310';
dsply theCharVar;
callp localProc();
P1086();
P454();
P348();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1310 in the procedure';
end-proc;