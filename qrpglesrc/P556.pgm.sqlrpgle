**free

ctl-opt dftactgrp(*no);

dcl-pi P556;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P349.rpgleinc'
/copy 'qrpgleref/P228.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'

dcl-ds T170 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T170 FROM T170 LIMIT 1;

theCharVar = 'Hello from P556';
dsply theCharVar;
callp localProc();
P349();
P228();
P125();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P556 in the procedure';
end-proc;