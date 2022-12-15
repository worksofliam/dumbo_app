**free

ctl-opt dftactgrp(*no);

dcl-pi P1488;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P872.rpgleinc'
/copy 'qrpgleref/P155.rpgleinc'
/copy 'qrpgleref/P1180.rpgleinc'

dcl-ds theTable extname('T78') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T78 LIMIT 1;

theCharVar = 'Hello from P1488';
dsply theCharVar;
callp localProc();
P872();
P155();
P1180();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1488 in the procedure';
end-proc;