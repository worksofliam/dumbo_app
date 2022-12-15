**free

ctl-opt dftactgrp(*no);

dcl-pi P196;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P186.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'

dcl-ds T498 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T498 FROM T498 LIMIT 1;

theCharVar = 'Hello from P196';
dsply theCharVar;
callp localProc();
P66();
P186();
P112();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P196 in the procedure';
end-proc;