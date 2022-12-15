**free

ctl-opt dftactgrp(*no);

dcl-pi P2387;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P577.rpgleinc'
/copy 'qrpgleref/P1375.rpgleinc'

dcl-ds T851 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T851 FROM T851 LIMIT 1;

theCharVar = 'Hello from P2387';
dsply theCharVar;
callp localProc();
P15();
P577();
P1375();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2387 in the procedure';
end-proc;