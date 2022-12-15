**free

ctl-opt dftactgrp(*no);

dcl-pi P1146;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P703.rpgleinc'
/copy 'qrpgleref/P607.rpgleinc'
/copy 'qrpgleref/P444.rpgleinc'

dcl-ds T116 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T116 FROM T116 LIMIT 1;

theCharVar = 'Hello from P1146';
dsply theCharVar;
callp localProc();
P703();
P607();
P444();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1146 in the procedure';
end-proc;