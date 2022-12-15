**free

ctl-opt dftactgrp(*no);

dcl-pi P818;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P474.rpgleinc'
/copy 'qrpgleref/P296.rpgleinc'
/copy 'qrpgleref/P321.rpgleinc'

dcl-ds T481 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T481 FROM T481 LIMIT 1;

theCharVar = 'Hello from P818';
dsply theCharVar;
callp localProc();
P474();
P296();
P321();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P818 in the procedure';
end-proc;