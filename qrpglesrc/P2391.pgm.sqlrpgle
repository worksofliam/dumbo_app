**free

ctl-opt dftactgrp(*no);

dcl-pi P2391;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2344.rpgleinc'
/copy 'qrpgleref/P1636.rpgleinc'
/copy 'qrpgleref/P890.rpgleinc'

dcl-ds T200 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T200 FROM T200 LIMIT 1;

theCharVar = 'Hello from P2391';
dsply theCharVar;
callp localProc();
P2344();
P1636();
P890();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2391 in the procedure';
end-proc;