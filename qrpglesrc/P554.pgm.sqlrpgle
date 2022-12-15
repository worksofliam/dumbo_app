**free

ctl-opt dftactgrp(*no);

dcl-pi P554;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P497.rpgleinc'
/copy 'qrpgleref/P550.rpgleinc'
/copy 'qrpgleref/P249.rpgleinc'

dcl-ds T1005 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1005 FROM T1005 LIMIT 1;

theCharVar = 'Hello from P554';
dsply theCharVar;
callp localProc();
P497();
P550();
P249();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P554 in the procedure';
end-proc;