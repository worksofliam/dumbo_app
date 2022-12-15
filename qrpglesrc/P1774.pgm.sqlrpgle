**free

ctl-opt dftactgrp(*no);

dcl-pi P1774;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1208.rpgleinc'
/copy 'qrpgleref/P542.rpgleinc'
/copy 'qrpgleref/P832.rpgleinc'

dcl-ds T257 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T257 FROM T257 LIMIT 1;

theCharVar = 'Hello from P1774';
dsply theCharVar;
callp localProc();
P1208();
P542();
P832();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1774 in the procedure';
end-proc;