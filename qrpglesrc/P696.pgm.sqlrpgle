**free

ctl-opt dftactgrp(*no);

dcl-pi P696;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P445.rpgleinc'
/copy 'qrpgleref/P521.rpgleinc'
/copy 'qrpgleref/P627.rpgleinc'

dcl-ds T490 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T490 FROM T490 LIMIT 1;

theCharVar = 'Hello from P696';
dsply theCharVar;
callp localProc();
P445();
P521();
P627();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P696 in the procedure';
end-proc;