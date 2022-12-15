**free

ctl-opt dftactgrp(*no);

dcl-pi P1573;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P491.rpgleinc'
/copy 'qrpgleref/P1297.rpgleinc'
/copy 'qrpgleref/P851.rpgleinc'

dcl-ds theTable extname('T556') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T556 LIMIT 1;

theCharVar = 'Hello from P1573';
dsply theCharVar;
callp localProc();
P491();
P1297();
P851();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1573 in the procedure';
end-proc;