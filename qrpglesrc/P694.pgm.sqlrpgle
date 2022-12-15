**free

ctl-opt dftactgrp(*no);

dcl-pi P694;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P250.rpgleinc'
/copy 'qrpgleref/P570.rpgleinc'
/copy 'qrpgleref/P483.rpgleinc'

dcl-ds T154 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T154 FROM T154 LIMIT 1;

theCharVar = 'Hello from P694';
dsply theCharVar;
callp localProc();
P250();
P570();
P483();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P694 in the procedure';
end-proc;