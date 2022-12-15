**free

ctl-opt dftactgrp(*no);

dcl-pi P2541;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P2413.rpgleinc'
/copy 'qrpgleref/P958.rpgleinc'

dcl-ds theTable extname('T1226') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1226 LIMIT 1;

theCharVar = 'Hello from P2541';
dsply theCharVar;
callp localProc();
P34();
P2413();
P958();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2541 in the procedure';
end-proc;