**free

ctl-opt dftactgrp(*no);

dcl-pi P3377;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2730.rpgleinc'
/copy 'qrpgleref/P901.rpgleinc'
/copy 'qrpgleref/P2577.rpgleinc'

dcl-ds T432 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T432 FROM T432 LIMIT 1;

theCharVar = 'Hello from P3377';
dsply theCharVar;
callp localProc();
P2730();
P901();
P2577();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3377 in the procedure';
end-proc;