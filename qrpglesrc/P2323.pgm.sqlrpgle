**free

ctl-opt dftactgrp(*no);

dcl-pi P2323;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1352.rpgleinc'
/copy 'qrpgleref/P1354.rpgleinc'
/copy 'qrpgleref/P376.rpgleinc'

dcl-ds T1005 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1005 FROM T1005 LIMIT 1;

theCharVar = 'Hello from P2323';
dsply theCharVar;
callp localProc();
P1352();
P1354();
P376();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2323 in the procedure';
end-proc;