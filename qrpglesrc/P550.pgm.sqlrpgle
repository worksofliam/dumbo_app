**free

ctl-opt dftactgrp(*no);

dcl-pi P550;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P270.rpgleinc'
/copy 'qrpgleref/P425.rpgleinc'
/copy 'qrpgleref/P186.rpgleinc'

dcl-ds T822 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T822 FROM T822 LIMIT 1;

theCharVar = 'Hello from P550';
dsply theCharVar;
callp localProc();
P270();
P425();
P186();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P550 in the procedure';
end-proc;