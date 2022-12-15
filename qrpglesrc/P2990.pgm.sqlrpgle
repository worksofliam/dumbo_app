**free

ctl-opt dftactgrp(*no);

dcl-pi P2990;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2638.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P2703.rpgleinc'

dcl-ds T458 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T458 FROM T458 LIMIT 1;

theCharVar = 'Hello from P2990';
dsply theCharVar;
callp localProc();
P2638();
P142();
P2703();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2990 in the procedure';
end-proc;