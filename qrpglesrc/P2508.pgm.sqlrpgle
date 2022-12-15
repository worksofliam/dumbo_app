**free

ctl-opt dftactgrp(*no);

dcl-pi P2508;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2413.rpgleinc'
/copy 'qrpgleref/P1030.rpgleinc'
/copy 'qrpgleref/P1375.rpgleinc'

dcl-ds theTable extname('T1210') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1210 LIMIT 1;

theCharVar = 'Hello from P2508';
dsply theCharVar;
callp localProc();
P2413();
P1030();
P1375();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2508 in the procedure';
end-proc;