**free

ctl-opt dftactgrp(*no);

dcl-pi P3086;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2075.rpgleinc'
/copy 'qrpgleref/P2394.rpgleinc'
/copy 'qrpgleref/P1923.rpgleinc'

dcl-ds T536 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T536 FROM T536 LIMIT 1;

theCharVar = 'Hello from P3086';
dsply theCharVar;
callp localProc();
P2075();
P2394();
P1923();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3086 in the procedure';
end-proc;