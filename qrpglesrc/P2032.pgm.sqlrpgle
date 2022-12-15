**free

ctl-opt dftactgrp(*no);

dcl-pi P2032;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1342.rpgleinc'
/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P357.rpgleinc'

dcl-ds T29 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T29 FROM T29 LIMIT 1;

theCharVar = 'Hello from P2032';
dsply theCharVar;
callp localProc();
P1342();
P214();
P357();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2032 in the procedure';
end-proc;