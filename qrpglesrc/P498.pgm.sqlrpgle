**free

ctl-opt dftactgrp(*no);

dcl-pi P498;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P251.rpgleinc'
/copy 'qrpgleref/P325.rpgleinc'

dcl-ds T845 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T845 FROM T845 LIMIT 1;

theCharVar = 'Hello from P498';
dsply theCharVar;
callp localProc();
P251();
P325();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P498 in the procedure';
end-proc;