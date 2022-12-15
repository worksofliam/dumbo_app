**free

ctl-opt dftactgrp(*no);

dcl-pi P3238;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2244.rpgleinc'
/copy 'qrpgleref/P1028.rpgleinc'
/copy 'qrpgleref/P1258.rpgleinc'

dcl-ds T181 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T181 FROM T181 LIMIT 1;

theCharVar = 'Hello from P3238';
dsply theCharVar;
callp localProc();
P2244();
P1028();
P1258();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3238 in the procedure';
end-proc;