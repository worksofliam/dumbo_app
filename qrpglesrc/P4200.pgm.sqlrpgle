**free

ctl-opt dftactgrp(*no);

dcl-pi P4200;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1611.rpgleinc'
/copy 'qrpgleref/P1033.rpgleinc'
/copy 'qrpgleref/P1625.rpgleinc'

dcl-ds theTable extname('T1557') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1557 LIMIT 1;

theCharVar = 'Hello from P4200';
dsply theCharVar;
callp localProc();
P1611();
P1033();
P1625();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4200 in the procedure';
end-proc;