**free

ctl-opt dftactgrp(*no);

dcl-pi P5393;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4426.rpgleinc'
/copy 'qrpgleref/P1265.rpgleinc'
/copy 'qrpgleref/P1266.rpgleinc'

dcl-ds theTable extname('T891') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T891 LIMIT 1;

theCharVar = 'Hello from P5393';
dsply theCharVar;
callp localProc();
P4426();
P1265();
P1266();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5393 in the procedure';
end-proc;