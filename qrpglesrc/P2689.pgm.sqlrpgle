**free

ctl-opt dftactgrp(*no);

dcl-pi P2689;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P1947.rpgleinc'
/copy 'qrpgleref/P2537.rpgleinc'

dcl-ds T737 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T737 FROM T737 LIMIT 1;

theCharVar = 'Hello from P2689';
dsply theCharVar;
callp localProc();
P27();
P1947();
P2537();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2689 in the procedure';
end-proc;