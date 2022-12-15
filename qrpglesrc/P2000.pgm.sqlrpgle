**free

ctl-opt dftactgrp(*no);

dcl-pi P2000;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P883.rpgleinc'
/copy 'qrpgleref/P1455.rpgleinc'
/copy 'qrpgleref/P1033.rpgleinc'

dcl-ds T1550 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1550 FROM T1550 LIMIT 1;

theCharVar = 'Hello from P2000';
dsply theCharVar;
callp localProc();
P883();
P1455();
P1033();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2000 in the procedure';
end-proc;