**free

ctl-opt dftactgrp(*no);

dcl-pi P2607;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2479.rpgleinc'
/copy 'qrpgleref/P270.rpgleinc'
/copy 'qrpgleref/P1406.rpgleinc'

dcl-ds T172 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T172 FROM T172 LIMIT 1;

theCharVar = 'Hello from P2607';
dsply theCharVar;
callp localProc();
P2479();
P270();
P1406();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2607 in the procedure';
end-proc;