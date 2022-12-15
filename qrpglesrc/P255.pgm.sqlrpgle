**free

ctl-opt dftactgrp(*no);

dcl-pi P255;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P244.rpgleinc'
/copy 'qrpgleref/P221.rpgleinc'
/copy 'qrpgleref/P194.rpgleinc'

dcl-ds T405 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T405 FROM T405 LIMIT 1;

theCharVar = 'Hello from P255';
dsply theCharVar;
callp localProc();
P244();
P221();
P194();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P255 in the procedure';
end-proc;