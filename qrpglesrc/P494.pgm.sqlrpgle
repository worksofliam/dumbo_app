**free

ctl-opt dftactgrp(*no);

dcl-pi P494;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P120.rpgleinc'
/copy 'qrpgleref/P141.rpgleinc'
/copy 'qrpgleref/P461.rpgleinc'

dcl-ds T456 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T456 FROM T456 LIMIT 1;

theCharVar = 'Hello from P494';
dsply theCharVar;
callp localProc();
P120();
P141();
P461();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P494 in the procedure';
end-proc;