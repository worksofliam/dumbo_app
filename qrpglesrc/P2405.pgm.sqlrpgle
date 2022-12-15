**free

ctl-opt dftactgrp(*no);

dcl-pi P2405;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1366.rpgleinc'
/copy 'qrpgleref/P514.rpgleinc'
/copy 'qrpgleref/P567.rpgleinc'

dcl-ds T62 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T62 FROM T62 LIMIT 1;

theCharVar = 'Hello from P2405';
dsply theCharVar;
callp localProc();
P1366();
P514();
P567();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2405 in the procedure';
end-proc;