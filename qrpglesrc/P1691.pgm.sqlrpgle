**free

ctl-opt dftactgrp(*no);

dcl-pi P1691;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P463.rpgleinc'
/copy 'qrpgleref/P648.rpgleinc'
/copy 'qrpgleref/P1150.rpgleinc'

dcl-ds T1760 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1760 FROM T1760 LIMIT 1;

theCharVar = 'Hello from P1691';
dsply theCharVar;
callp localProc();
P463();
P648();
P1150();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1691 in the procedure';
end-proc;