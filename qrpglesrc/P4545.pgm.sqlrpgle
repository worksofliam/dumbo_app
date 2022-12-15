**free

ctl-opt dftactgrp(*no);

dcl-pi P4545;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2354.rpgleinc'
/copy 'qrpgleref/P1743.rpgleinc'
/copy 'qrpgleref/P2891.rpgleinc'

dcl-ds T178 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T178 FROM T178 LIMIT 1;

theCharVar = 'Hello from P4545';
dsply theCharVar;
callp localProc();
P2354();
P1743();
P2891();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4545 in the procedure';
end-proc;