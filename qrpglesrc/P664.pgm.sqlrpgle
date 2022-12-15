**free

ctl-opt dftactgrp(*no);

dcl-pi P664;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P479.rpgleinc'
/copy 'qrpgleref/P495.rpgleinc'

dcl-ds T10 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T10 FROM T10 LIMIT 1;

theCharVar = 'Hello from P664';
dsply theCharVar;
callp localProc();
P479();
P495();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P664 in the procedure';
end-proc;