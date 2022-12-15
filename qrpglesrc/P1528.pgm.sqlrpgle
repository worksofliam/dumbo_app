**free

ctl-opt dftactgrp(*no);

dcl-pi P1528;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1322.rpgleinc'
/copy 'qrpgleref/P977.rpgleinc'
/copy 'qrpgleref/P1352.rpgleinc'

dcl-ds T426 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T426 FROM T426 LIMIT 1;

theCharVar = 'Hello from P1528';
dsply theCharVar;
callp localProc();
P1322();
P977();
P1352();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1528 in the procedure';
end-proc;