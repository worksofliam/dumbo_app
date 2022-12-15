**free

ctl-opt dftactgrp(*no);

dcl-pi P5341;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1002.rpgleinc'
/copy 'qrpgleref/P4667.rpgleinc'
/copy 'qrpgleref/P3966.rpgleinc'

dcl-ds T931 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T931 FROM T931 LIMIT 1;

theCharVar = 'Hello from P5341';
dsply theCharVar;
callp localProc();
P1002();
P4667();
P3966();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5341 in the procedure';
end-proc;