**free

ctl-opt dftactgrp(*no);

dcl-pi P447;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P321.rpgleinc'
/copy 'qrpgleref/P161.rpgleinc'

dcl-ds T782 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T782 FROM T782 LIMIT 1;

theCharVar = 'Hello from P447';
dsply theCharVar;
callp localProc();
P233();
P321();
P161();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P447 in the procedure';
end-proc;