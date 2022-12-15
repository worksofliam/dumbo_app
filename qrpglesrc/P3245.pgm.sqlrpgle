**free

ctl-opt dftactgrp(*no);

dcl-pi P3245;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P627.rpgleinc'
/copy 'qrpgleref/P1046.rpgleinc'
/copy 'qrpgleref/P825.rpgleinc'

dcl-ds T879 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T879 FROM T879 LIMIT 1;

theCharVar = 'Hello from P3245';
dsply theCharVar;
callp localProc();
P627();
P1046();
P825();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3245 in the procedure';
end-proc;