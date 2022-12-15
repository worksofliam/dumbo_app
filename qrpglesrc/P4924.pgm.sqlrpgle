**free

ctl-opt dftactgrp(*no);

dcl-pi P4924;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2529.rpgleinc'
/copy 'qrpgleref/P296.rpgleinc'
/copy 'qrpgleref/P1551.rpgleinc'

dcl-ds theTable extname('T1561') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1561 LIMIT 1;

theCharVar = 'Hello from P4924';
dsply theCharVar;
callp localProc();
P2529();
P296();
P1551();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4924 in the procedure';
end-proc;