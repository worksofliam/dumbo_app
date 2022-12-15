**free

ctl-opt dftactgrp(*no);

dcl-pi P1260;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1015.rpgleinc'
/copy 'qrpgleref/P573.rpgleinc'
/copy 'qrpgleref/P374.rpgleinc'

dcl-ds T355 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T355 FROM T355 LIMIT 1;

theCharVar = 'Hello from P1260';
dsply theCharVar;
callp localProc();
P1015();
P573();
P374();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1260 in the procedure';
end-proc;