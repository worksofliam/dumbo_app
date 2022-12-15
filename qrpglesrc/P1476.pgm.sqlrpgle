**free

ctl-opt dftactgrp(*no);

dcl-pi P1476;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1428.rpgleinc'
/copy 'qrpgleref/P306.rpgleinc'
/copy 'qrpgleref/P975.rpgleinc'

dcl-ds theTable extname('T421') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T421 LIMIT 1;

theCharVar = 'Hello from P1476';
dsply theCharVar;
callp localProc();
P1428();
P306();
P975();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1476 in the procedure';
end-proc;