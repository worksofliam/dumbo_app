**free

ctl-opt dftactgrp(*no);

dcl-pi P2269;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1974.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P1353.rpgleinc'

dcl-ds T1279 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1279 FROM T1279 LIMIT 1;

theCharVar = 'Hello from P2269';
dsply theCharVar;
callp localProc();
P1974();
P9();
P1353();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2269 in the procedure';
end-proc;