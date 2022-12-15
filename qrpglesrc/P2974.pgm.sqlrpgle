**free

ctl-opt dftactgrp(*no);

dcl-pi P2974;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1020.rpgleinc'
/copy 'qrpgleref/P649.rpgleinc'
/copy 'qrpgleref/P2621.rpgleinc'

dcl-ds T687 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T687 FROM T687 LIMIT 1;

theCharVar = 'Hello from P2974';
dsply theCharVar;
callp localProc();
P1020();
P649();
P2621();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2974 in the procedure';
end-proc;