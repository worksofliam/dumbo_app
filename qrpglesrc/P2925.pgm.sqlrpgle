**free

ctl-opt dftactgrp(*no);

dcl-pi P2925;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P969.rpgleinc'
/copy 'qrpgleref/P899.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'

dcl-ds theTable extname('T1325') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1325 LIMIT 1;

theCharVar = 'Hello from P2925';
dsply theCharVar;
callp localProc();
P969();
P899();
P30();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2925 in the procedure';
end-proc;