**free

ctl-opt dftactgrp(*no);

dcl-pi P459;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P133.rpgleinc'
/copy 'qrpgleref/P148.rpgleinc'
/copy 'qrpgleref/P374.rpgleinc'

dcl-ds T132 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T132 FROM T132 LIMIT 1;

theCharVar = 'Hello from P459';
dsply theCharVar;
callp localProc();
P133();
P148();
P374();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P459 in the procedure';
end-proc;