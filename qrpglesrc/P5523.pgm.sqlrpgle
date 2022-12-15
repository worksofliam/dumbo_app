**free

ctl-opt dftactgrp(*no);

dcl-pi P5523;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2692.rpgleinc'
/copy 'qrpgleref/P1938.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'

dcl-ds T1426 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1426 FROM T1426 LIMIT 1;

theCharVar = 'Hello from P5523';
dsply theCharVar;
callp localProc();
P2692();
P1938();
P32();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5523 in the procedure';
end-proc;