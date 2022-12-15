**free

ctl-opt dftactgrp(*no);

dcl-pi P674;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P640.rpgleinc'
/copy 'qrpgleref/P627.rpgleinc'
/copy 'qrpgleref/P505.rpgleinc'

dcl-ds T4 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T4 FROM T4 LIMIT 1;

theCharVar = 'Hello from P674';
dsply theCharVar;
callp localProc();
P640();
P627();
P505();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P674 in the procedure';
end-proc;