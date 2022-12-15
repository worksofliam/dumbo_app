**free

ctl-opt dftactgrp(*no);

dcl-pi P642;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P251.rpgleinc'
/copy 'qrpgleref/P624.rpgleinc'

dcl-ds T137 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T137 FROM T137 LIMIT 1;

theCharVar = 'Hello from P642';
dsply theCharVar;
callp localProc();
P157();
P251();
P624();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P642 in the procedure';
end-proc;