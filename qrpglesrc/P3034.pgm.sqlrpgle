**free

ctl-opt dftactgrp(*no);

dcl-pi P3034;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2649.rpgleinc'
/copy 'qrpgleref/P1044.rpgleinc'
/copy 'qrpgleref/P2573.rpgleinc'

dcl-ds T529 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T529 FROM T529 LIMIT 1;

theCharVar = 'Hello from P3034';
dsply theCharVar;
callp localProc();
P2649();
P1044();
P2573();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3034 in the procedure';
end-proc;