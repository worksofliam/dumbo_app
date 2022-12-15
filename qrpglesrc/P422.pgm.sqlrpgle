**free

ctl-opt dftactgrp(*no);

dcl-pi P422;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P396.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P140.rpgleinc'

dcl-ds T36 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T36 FROM T36 LIMIT 1;

theCharVar = 'Hello from P422';
dsply theCharVar;
callp localProc();
P396();
P102();
P140();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P422 in the procedure';
end-proc;