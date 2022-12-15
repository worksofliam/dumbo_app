**free

ctl-opt dftactgrp(*no);

dcl-pi P967;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P868.rpgleinc'
/copy 'qrpgleref/P707.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'

dcl-ds theTable extname('T230') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T230 LIMIT 1;

theCharVar = 'Hello from P967';
dsply theCharVar;
callp localProc();
P868();
P707();
P91();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P967 in the procedure';
end-proc;