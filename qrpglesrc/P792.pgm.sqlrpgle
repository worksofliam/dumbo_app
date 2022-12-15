**free

ctl-opt dftactgrp(*no);

dcl-pi P792;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P161.rpgleinc'
/copy 'qrpgleref/P291.rpgleinc'
/copy 'qrpgleref/P99.rpgleinc'

dcl-ds T200 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T200 FROM T200 LIMIT 1;

theCharVar = 'Hello from P792';
dsply theCharVar;
callp localProc();
P161();
P291();
P99();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P792 in the procedure';
end-proc;