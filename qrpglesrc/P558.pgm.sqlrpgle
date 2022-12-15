**free

ctl-opt dftactgrp(*no);

dcl-pi P558;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P431.rpgleinc'
/copy 'qrpgleref/P382.rpgleinc'
/copy 'qrpgleref/P521.rpgleinc'

dcl-ds T146 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T146 FROM T146 LIMIT 1;

theCharVar = 'Hello from P558';
dsply theCharVar;
callp localProc();
P431();
P382();
P521();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P558 in the procedure';
end-proc;