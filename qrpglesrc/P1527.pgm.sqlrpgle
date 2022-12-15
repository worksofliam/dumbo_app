**free

ctl-opt dftactgrp(*no);

dcl-pi P1527;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1097.rpgleinc'
/copy 'qrpgleref/P1137.rpgleinc'
/copy 'qrpgleref/P1059.rpgleinc'

dcl-ds theTable extname('T1106') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1106 LIMIT 1;

theCharVar = 'Hello from P1527';
dsply theCharVar;
callp localProc();
P1097();
P1137();
P1059();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1527 in the procedure';
end-proc;