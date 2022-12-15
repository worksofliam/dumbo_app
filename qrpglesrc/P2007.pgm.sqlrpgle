**free

ctl-opt dftactgrp(*no);

dcl-pi P2007;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P533.rpgleinc'
/copy 'qrpgleref/P1875.rpgleinc'
/copy 'qrpgleref/P313.rpgleinc'

dcl-ds T318 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T318 FROM T318 LIMIT 1;

theCharVar = 'Hello from P2007';
dsply theCharVar;
callp localProc();
P533();
P1875();
P313();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2007 in the procedure';
end-proc;