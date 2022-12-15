**free

ctl-opt dftactgrp(*no);

dcl-pi P2465;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2223.rpgleinc'
/copy 'qrpgleref/P228.rpgleinc'
/copy 'qrpgleref/P2391.rpgleinc'

dcl-ds T929 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T929 FROM T929 LIMIT 1;

theCharVar = 'Hello from P2465';
dsply theCharVar;
callp localProc();
P2223();
P228();
P2391();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2465 in the procedure';
end-proc;