**free

ctl-opt dftactgrp(*no);

dcl-pi P968;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P265.rpgleinc'
/copy 'qrpgleref/P472.rpgleinc'
/copy 'qrpgleref/P359.rpgleinc'

dcl-ds T362 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T362 FROM T362 LIMIT 1;

theCharVar = 'Hello from P968';
dsply theCharVar;
callp localProc();
P265();
P472();
P359();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P968 in the procedure';
end-proc;