**free

ctl-opt dftactgrp(*no);

dcl-pi P4298;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2940.rpgleinc'
/copy 'qrpgleref/P808.rpgleinc'
/copy 'qrpgleref/P3409.rpgleinc'

dcl-ds T883 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T883 FROM T883 LIMIT 1;

theCharVar = 'Hello from P4298';
dsply theCharVar;
callp localProc();
P2940();
P808();
P3409();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4298 in the procedure';
end-proc;