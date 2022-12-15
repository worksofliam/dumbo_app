**free

ctl-opt dftactgrp(*no);

dcl-pi P258;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P244.rpgleinc'

dcl-ds T1047 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1047 FROM T1047 LIMIT 1;

theCharVar = 'Hello from P258';
dsply theCharVar;
callp localProc();
P19();
P214();
P244();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P258 in the procedure';
end-proc;