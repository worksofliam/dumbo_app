**free

ctl-opt dftactgrp(*no);

dcl-pi P893;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P211.rpgleinc'
/copy 'qrpgleref/P660.rpgleinc'
/copy 'qrpgleref/P814.rpgleinc'

dcl-ds T19 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T19 FROM T19 LIMIT 1;

theCharVar = 'Hello from P893';
dsply theCharVar;
callp localProc();
P211();
P660();
P814();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P893 in the procedure';
end-proc;