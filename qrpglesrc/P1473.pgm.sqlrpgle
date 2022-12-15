**free

ctl-opt dftactgrp(*no);

dcl-pi P1473;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P376.rpgleinc'
/copy 'qrpgleref/P437.rpgleinc'
/copy 'qrpgleref/P480.rpgleinc'

dcl-ds T569 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T569 FROM T569 LIMIT 1;

theCharVar = 'Hello from P1473';
dsply theCharVar;
callp localProc();
P376();
P437();
P480();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1473 in the procedure';
end-proc;