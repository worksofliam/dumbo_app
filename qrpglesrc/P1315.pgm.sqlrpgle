**free

ctl-opt dftactgrp(*no);

dcl-pi P1315;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P330.rpgleinc'
/copy 'qrpgleref/P413.rpgleinc'
/copy 'qrpgleref/P669.rpgleinc'

dcl-ds theTable extname('T97') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T97 LIMIT 1;

theCharVar = 'Hello from P1315';
dsply theCharVar;
callp localProc();
P330();
P413();
P669();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1315 in the procedure';
end-proc;