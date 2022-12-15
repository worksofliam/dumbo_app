**free

ctl-opt dftactgrp(*no);

dcl-pi P2736;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1407.rpgleinc'
/copy 'qrpgleref/P2725.rpgleinc'
/copy 'qrpgleref/P1391.rpgleinc'

dcl-ds theTable extname('T602') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T602 LIMIT 1;

theCharVar = 'Hello from P2736';
dsply theCharVar;
callp localProc();
P1407();
P2725();
P1391();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2736 in the procedure';
end-proc;