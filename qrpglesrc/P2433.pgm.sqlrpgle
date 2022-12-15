**free

ctl-opt dftactgrp(*no);

dcl-pi P2433;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P691.rpgleinc'
/copy 'qrpgleref/P1815.rpgleinc'
/copy 'qrpgleref/P139.rpgleinc'

dcl-ds theTable extname('T861') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T861 LIMIT 1;

theCharVar = 'Hello from P2433';
dsply theCharVar;
callp localProc();
P691();
P1815();
P139();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2433 in the procedure';
end-proc;