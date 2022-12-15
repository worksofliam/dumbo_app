**free

ctl-opt dftactgrp(*no);

dcl-pi P2260;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P878.rpgleinc'
/copy 'qrpgleref/P672.rpgleinc'
/copy 'qrpgleref/P1314.rpgleinc'

dcl-ds T679 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T679 FROM T679 LIMIT 1;

theCharVar = 'Hello from P2260';
dsply theCharVar;
callp localProc();
P878();
P672();
P1314();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2260 in the procedure';
end-proc;