**free

ctl-opt dftactgrp(*no);

dcl-pi P638;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P315.rpgleinc'
/copy 'qrpgleref/P138.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'

dcl-ds T128 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T128 FROM T128 LIMIT 1;

theCharVar = 'Hello from P638';
dsply theCharVar;
callp localProc();
P315();
P138();
P101();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P638 in the procedure';
end-proc;