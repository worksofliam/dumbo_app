**free

ctl-opt dftactgrp(*no);

dcl-pi P1407;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P413.rpgleinc'
/copy 'qrpgleref/P490.rpgleinc'
/copy 'qrpgleref/P270.rpgleinc'

dcl-ds theTable extname('T197') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T197 LIMIT 1;

theCharVar = 'Hello from P1407';
dsply theCharVar;
callp localProc();
P413();
P490();
P270();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1407 in the procedure';
end-proc;