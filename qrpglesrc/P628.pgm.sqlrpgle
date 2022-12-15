**free

ctl-opt dftactgrp(*no);

dcl-pi P628;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P381.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'

dcl-ds T135 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T135 FROM T135 LIMIT 1;

theCharVar = 'Hello from P628';
dsply theCharVar;
callp localProc();
P381();
P114();
P439();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P628 in the procedure';
end-proc;