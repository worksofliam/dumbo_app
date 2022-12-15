**free

ctl-opt dftactgrp(*no);

dcl-pi P736;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P444.rpgleinc'

dcl-ds T148 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T148 FROM T148 LIMIT 1;

theCharVar = 'Hello from P736';
dsply theCharVar;
callp localProc();
P54();
P444();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P736 in the procedure';
end-proc;