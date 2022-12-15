**free

ctl-opt dftactgrp(*no);

dcl-pi P3405;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P909.rpgleinc'
/copy 'qrpgleref/P2274.rpgleinc'
/copy 'qrpgleref/P2296.rpgleinc'

dcl-ds T598 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T598 FROM T598 LIMIT 1;

theCharVar = 'Hello from P3405';
dsply theCharVar;
callp localProc();
P909();
P2274();
P2296();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3405 in the procedure';
end-proc;