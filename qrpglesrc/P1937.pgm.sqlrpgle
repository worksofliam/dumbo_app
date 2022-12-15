**free

ctl-opt dftactgrp(*no);

dcl-pi P1937;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1604.rpgleinc'
/copy 'qrpgleref/P1027.rpgleinc'
/copy 'qrpgleref/P1570.rpgleinc'

dcl-ds theTable extname('T1546') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1546 LIMIT 1;

theCharVar = 'Hello from P1937';
dsply theCharVar;
callp localProc();
P1604();
P1027();
P1570();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1937 in the procedure';
end-proc;