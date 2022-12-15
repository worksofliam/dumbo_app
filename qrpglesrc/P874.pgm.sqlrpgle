**free

ctl-opt dftactgrp(*no);

dcl-pi P874;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P692.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'

dcl-ds T414 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T414 FROM T414 LIMIT 1;

theCharVar = 'Hello from P874';
dsply theCharVar;
callp localProc();
P68();
P692();
P49();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P874 in the procedure';
end-proc;