**free

ctl-opt dftactgrp(*no);

dcl-pi P1789;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1285.rpgleinc'
/copy 'qrpgleref/P1413.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'

dcl-ds T1863 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1863 FROM T1863 LIMIT 1;

theCharVar = 'Hello from P1789';
dsply theCharVar;
callp localProc();
P1285();
P1413();
P8();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1789 in the procedure';
end-proc;