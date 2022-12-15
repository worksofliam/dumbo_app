**free

ctl-opt dftactgrp(*no);

dcl-pi P1245;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P413.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P1081.rpgleinc'

dcl-ds theTable extname('T126') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T126 LIMIT 1;

theCharVar = 'Hello from P1245';
dsply theCharVar;
callp localProc();
P413();
P84();
P1081();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1245 in the procedure';
end-proc;