**free

ctl-opt dftactgrp(*no);

dcl-pi P1460;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P556.rpgleinc'
/copy 'qrpgleref/P1311.rpgleinc'
/copy 'qrpgleref/P1352.rpgleinc'

dcl-ds theTable extname('T94') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T94 LIMIT 1;

theCharVar = 'Hello from P1460';
dsply theCharVar;
callp localProc();
P556();
P1311();
P1352();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1460 in the procedure';
end-proc;