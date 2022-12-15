**free

ctl-opt dftactgrp(*no);

dcl-pi P318;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P251.rpgleinc'
/copy 'qrpgleref/P241.rpgleinc'
/copy 'qrpgleref/P157.rpgleinc'

dcl-ds T54 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T54 FROM T54 LIMIT 1;

theCharVar = 'Hello from P318';
dsply theCharVar;
callp localProc();
P251();
P241();
P157();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P318 in the procedure';
end-proc;