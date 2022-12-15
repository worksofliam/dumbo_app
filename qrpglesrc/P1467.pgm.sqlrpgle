**free

ctl-opt dftactgrp(*no);

dcl-pi P1467;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1067.rpgleinc'
/copy 'qrpgleref/P1336.rpgleinc'
/copy 'qrpgleref/P519.rpgleinc'

dcl-ds T98 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T98 FROM T98 LIMIT 1;

theCharVar = 'Hello from P1467';
dsply theCharVar;
callp localProc();
P1067();
P1336();
P519();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1467 in the procedure';
end-proc;