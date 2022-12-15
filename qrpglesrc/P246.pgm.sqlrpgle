**free

ctl-opt dftactgrp(*no);

dcl-pi P246;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P168.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'

dcl-ds T332 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T332 FROM T332 LIMIT 1;

theCharVar = 'Hello from P246';
dsply theCharVar;
callp localProc();
P7();
P168();
P20();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P246 in the procedure';
end-proc;