**free

ctl-opt dftactgrp(*no);

dcl-pi P2995;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2099.rpgleinc'
/copy 'qrpgleref/P2255.rpgleinc'
/copy 'qrpgleref/P2109.rpgleinc'

dcl-ds T543 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T543 FROM T543 LIMIT 1;

theCharVar = 'Hello from P2995';
dsply theCharVar;
callp localProc();
P2099();
P2255();
P2109();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2995 in the procedure';
end-proc;