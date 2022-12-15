**free

ctl-opt dftactgrp(*no);

dcl-pi P1454;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1007.rpgleinc'
/copy 'qrpgleref/P1387.rpgleinc'
/copy 'qrpgleref/P107.rpgleinc'

dcl-ds theTable extname('T1663') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1663 LIMIT 1;

theCharVar = 'Hello from P1454';
dsply theCharVar;
callp localProc();
P1007();
P1387();
P107();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1454 in the procedure';
end-proc;