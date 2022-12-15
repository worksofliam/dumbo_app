**free

ctl-opt dftactgrp(*no);

dcl-pi P2536;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P675.rpgleinc'
/copy 'qrpgleref/P1000.rpgleinc'
/copy 'qrpgleref/P2305.rpgleinc'

dcl-ds T807 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T807 FROM T807 LIMIT 1;

theCharVar = 'Hello from P2536';
dsply theCharVar;
callp localProc();
P675();
P1000();
P2305();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2536 in the procedure';
end-proc;