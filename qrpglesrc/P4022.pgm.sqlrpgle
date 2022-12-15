**free

ctl-opt dftactgrp(*no);

dcl-pi P4022;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2265.rpgleinc'
/copy 'qrpgleref/P1697.rpgleinc'
/copy 'qrpgleref/P1158.rpgleinc'

dcl-ds theTable extname('T1060') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1060 LIMIT 1;

theCharVar = 'Hello from P4022';
dsply theCharVar;
callp localProc();
P2265();
P1697();
P1158();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4022 in the procedure';
end-proc;