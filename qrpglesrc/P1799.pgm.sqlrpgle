**free

ctl-opt dftactgrp(*no);

dcl-pi P1799;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1149.rpgleinc'
/copy 'qrpgleref/P495.rpgleinc'
/copy 'qrpgleref/P336.rpgleinc'

dcl-ds T788 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T788 FROM T788 LIMIT 1;

theCharVar = 'Hello from P1799';
dsply theCharVar;
callp localProc();
P1149();
P495();
P336();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1799 in the procedure';
end-proc;