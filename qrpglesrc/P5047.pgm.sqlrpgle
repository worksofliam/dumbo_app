**free

ctl-opt dftactgrp(*no);

dcl-pi P5047;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4290.rpgleinc'
/copy 'qrpgleref/P1499.rpgleinc'
/copy 'qrpgleref/P3267.rpgleinc'

dcl-ds T501 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T501 FROM T501 LIMIT 1;

theCharVar = 'Hello from P5047';
dsply theCharVar;
callp localProc();
P4290();
P1499();
P3267();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5047 in the procedure';
end-proc;