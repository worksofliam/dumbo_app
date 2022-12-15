**free

ctl-opt dftactgrp(*no);

dcl-pi P4444;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3523.rpgleinc'
/copy 'qrpgleref/P4405.rpgleinc'
/copy 'qrpgleref/P4244.rpgleinc'

dcl-ds T1017 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1017 FROM T1017 LIMIT 1;

theCharVar = 'Hello from P4444';
dsply theCharVar;
callp localProc();
P3523();
P4405();
P4244();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4444 in the procedure';
end-proc;