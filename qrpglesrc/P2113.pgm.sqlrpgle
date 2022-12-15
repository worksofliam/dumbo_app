**free

ctl-opt dftactgrp(*no);

dcl-pi P2113;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P429.rpgleinc'
/copy 'qrpgleref/P519.rpgleinc'
/copy 'qrpgleref/P413.rpgleinc'

dcl-ds theTable extname('T1040') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1040 LIMIT 1;

theCharVar = 'Hello from P2113';
dsply theCharVar;
callp localProc();
P429();
P519();
P413();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2113 in the procedure';
end-proc;