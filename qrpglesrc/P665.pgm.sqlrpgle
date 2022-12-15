**free

ctl-opt dftactgrp(*no);

dcl-pi P665;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P572.rpgleinc'

dcl-ds T77 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T77 FROM T77 LIMIT 1;

theCharVar = 'Hello from P665';
dsply theCharVar;
callp localProc();
P246();
P40();
P572();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P665 in the procedure';
end-proc;