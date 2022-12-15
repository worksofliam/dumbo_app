**free

ctl-opt dftactgrp(*no);

dcl-pi P2479;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2132.rpgleinc'
/copy 'qrpgleref/P1654.rpgleinc'
/copy 'qrpgleref/P2189.rpgleinc'

dcl-ds T472 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T472 FROM T472 LIMIT 1;

theCharVar = 'Hello from P2479';
dsply theCharVar;
callp localProc();
P2132();
P1654();
P2189();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2479 in the procedure';
end-proc;