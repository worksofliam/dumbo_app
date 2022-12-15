**free

ctl-opt dftactgrp(*no);

dcl-pi P2757;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1052.rpgleinc'
/copy 'qrpgleref/P1253.rpgleinc'
/copy 'qrpgleref/P1502.rpgleinc'

dcl-ds T239 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T239 FROM T239 LIMIT 1;

theCharVar = 'Hello from P2757';
dsply theCharVar;
callp localProc();
P1052();
P1253();
P1502();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2757 in the procedure';
end-proc;