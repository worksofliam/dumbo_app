**free

ctl-opt dftactgrp(*no);

dcl-pi P715;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P697.rpgleinc'
/copy 'qrpgleref/P596.rpgleinc'
/copy 'qrpgleref/P342.rpgleinc'

dcl-ds theTable extname('T7') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T7 LIMIT 1;

theCharVar = 'Hello from P715';
dsply theCharVar;
callp localProc();
P697();
P596();
P342();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P715 in the procedure';
end-proc;