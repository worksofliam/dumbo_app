**free

ctl-opt dftactgrp(*no);

dcl-pi P59;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'

dcl-ds T29 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T29 FROM T29 LIMIT 1;

theCharVar = 'Hello from P59';
dsply theCharVar;
callp localProc();
P43();
P56();
P15();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P59 in the procedure';
end-proc;