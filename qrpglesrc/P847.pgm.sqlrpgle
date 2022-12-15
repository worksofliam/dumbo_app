**free

ctl-opt dftactgrp(*no);

dcl-pi P847;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P194.rpgleinc'
/copy 'qrpgleref/P413.rpgleinc'
/copy 'qrpgleref/P339.rpgleinc'

dcl-ds T478 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T478 FROM T478 LIMIT 1;

theCharVar = 'Hello from P847';
dsply theCharVar;
callp localProc();
P194();
P413();
P339();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P847 in the procedure';
end-proc;