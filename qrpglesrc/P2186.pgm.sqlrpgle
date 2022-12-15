**free

ctl-opt dftactgrp(*no);

dcl-pi P2186;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P720.rpgleinc'
/copy 'qrpgleref/P1944.rpgleinc'
/copy 'qrpgleref/P753.rpgleinc'

dcl-ds T1668 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1668 FROM T1668 LIMIT 1;

theCharVar = 'Hello from P2186';
dsply theCharVar;
callp localProc();
P720();
P1944();
P753();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2186 in the procedure';
end-proc;