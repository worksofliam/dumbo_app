**free

ctl-opt dftactgrp(*no);

dcl-pi P2414;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1506.rpgleinc'
/copy 'qrpgleref/P1551.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'

dcl-ds T35 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T35 FROM T35 LIMIT 1;

theCharVar = 'Hello from P2414';
dsply theCharVar;
callp localProc();
P1506();
P1551();
P32();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2414 in the procedure';
end-proc;