**free

ctl-opt dftactgrp(*no);

dcl-pi P1581;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P491.rpgleinc'
/copy 'qrpgleref/P1009.rpgleinc'
/copy 'qrpgleref/P1084.rpgleinc'

dcl-ds theTable extname('T230') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T230 LIMIT 1;

theCharVar = 'Hello from P1581';
dsply theCharVar;
callp localProc();
P491();
P1009();
P1084();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1581 in the procedure';
end-proc;