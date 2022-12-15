**free

ctl-opt dftactgrp(*no);

dcl-pi P200;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P75.rpgleinc'
/copy 'qrpgleref/P149.rpgleinc'

dcl-ds T799 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T799 FROM T799 LIMIT 1;

theCharVar = 'Hello from P200';
dsply theCharVar;
callp localProc();
P157();
P75();
P149();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P200 in the procedure';
end-proc;