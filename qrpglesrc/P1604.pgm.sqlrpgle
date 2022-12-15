**free

ctl-opt dftactgrp(*no);

dcl-pi P1604;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1158.rpgleinc'
/copy 'qrpgleref/P912.rpgleinc'
/copy 'qrpgleref/P1113.rpgleinc'

dcl-ds theTable extname('T547') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T547 LIMIT 1;

theCharVar = 'Hello from P1604';
dsply theCharVar;
callp localProc();
P1158();
P912();
P1113();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1604 in the procedure';
end-proc;