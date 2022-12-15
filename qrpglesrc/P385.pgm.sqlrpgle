**free

ctl-opt dftactgrp(*no);

dcl-pi P385;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P120.rpgleinc'
/copy 'qrpgleref/P366.rpgleinc'
/copy 'qrpgleref/P104.rpgleinc'

dcl-ds T819 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T819 FROM T819 LIMIT 1;

theCharVar = 'Hello from P385';
dsply theCharVar;
callp localProc();
P120();
P366();
P104();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P385 in the procedure';
end-proc;