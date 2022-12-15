**free

ctl-opt dftactgrp(*no);

dcl-pi P5516;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2039.rpgleinc'
/copy 'qrpgleref/P4197.rpgleinc'
/copy 'qrpgleref/P4413.rpgleinc'

dcl-ds T24 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T24 FROM T24 LIMIT 1;

theCharVar = 'Hello from P5516';
dsply theCharVar;
callp localProc();
P2039();
P4197();
P4413();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5516 in the procedure';
end-proc;