**free

ctl-opt dftactgrp(*no);

dcl-pi P294;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P105.rpgleinc'
/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P244.rpgleinc'

dcl-ds T153 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T153 FROM T153 LIMIT 1;

theCharVar = 'Hello from P294';
dsply theCharVar;
callp localProc();
P105();
P177();
P244();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P294 in the procedure';
end-proc;