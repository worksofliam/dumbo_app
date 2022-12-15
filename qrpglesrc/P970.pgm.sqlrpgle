**free

ctl-opt dftactgrp(*no);

dcl-pi P970;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P124.rpgleinc'
/copy 'qrpgleref/P565.rpgleinc'
/copy 'qrpgleref/P901.rpgleinc'

dcl-ds T180 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T180 FROM T180 LIMIT 1;

theCharVar = 'Hello from P970';
dsply theCharVar;
callp localProc();
P124();
P565();
P901();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P970 in the procedure';
end-proc;