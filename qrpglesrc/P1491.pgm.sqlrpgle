**free

ctl-opt dftactgrp(*no);

dcl-pi P1491;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1381.rpgleinc'
/copy 'qrpgleref/P654.rpgleinc'
/copy 'qrpgleref/P983.rpgleinc'

dcl-ds theTable extname('T349') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T349 LIMIT 1;

theCharVar = 'Hello from P1491';
dsply theCharVar;
callp localProc();
P1381();
P654();
P983();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1491 in the procedure';
end-proc;