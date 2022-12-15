**free

ctl-opt dftactgrp(*no);

dcl-pi P2754;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P385.rpgleinc'
/copy 'qrpgleref/P2569.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'

dcl-ds T1834 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1834 FROM T1834 LIMIT 1;

theCharVar = 'Hello from P2754';
dsply theCharVar;
callp localProc();
P385();
P2569();
P54();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2754 in the procedure';
end-proc;