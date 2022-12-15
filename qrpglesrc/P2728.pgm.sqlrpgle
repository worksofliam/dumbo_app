**free

ctl-opt dftactgrp(*no);

dcl-pi P2728;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P999.rpgleinc'
/copy 'qrpgleref/P2446.rpgleinc'
/copy 'qrpgleref/P1051.rpgleinc'

dcl-ds T946 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T946 FROM T946 LIMIT 1;

theCharVar = 'Hello from P2728';
dsply theCharVar;
callp localProc();
P999();
P2446();
P1051();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2728 in the procedure';
end-proc;