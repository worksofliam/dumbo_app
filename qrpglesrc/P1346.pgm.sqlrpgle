**free

ctl-opt dftactgrp(*no);

dcl-pi P1346;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P983.rpgleinc'
/copy 'qrpgleref/P444.rpgleinc'
/copy 'qrpgleref/P1057.rpgleinc'

dcl-ds theTable extname('T95') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T95 LIMIT 1;

theCharVar = 'Hello from P1346';
dsply theCharVar;
callp localProc();
P983();
P444();
P1057();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1346 in the procedure';
end-proc;