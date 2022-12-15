**free

ctl-opt dftactgrp(*no);

dcl-pi P1953;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1296.rpgleinc'
/copy 'qrpgleref/P1596.rpgleinc'
/copy 'qrpgleref/P1000.rpgleinc'

dcl-ds theTable extname('T403') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T403 LIMIT 1;

theCharVar = 'Hello from P1953';
dsply theCharVar;
callp localProc();
P1296();
P1596();
P1000();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1953 in the procedure';
end-proc;