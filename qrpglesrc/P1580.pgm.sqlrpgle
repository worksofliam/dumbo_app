**free

ctl-opt dftactgrp(*no);

dcl-pi P1580;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1410.rpgleinc'
/copy 'qrpgleref/P722.rpgleinc'
/copy 'qrpgleref/P413.rpgleinc'

dcl-ds T951 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T951 FROM T951 LIMIT 1;

theCharVar = 'Hello from P1580';
dsply theCharVar;
callp localProc();
P1410();
P722();
P413();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1580 in the procedure';
end-proc;