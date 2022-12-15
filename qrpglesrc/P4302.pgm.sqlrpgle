**free

ctl-opt dftactgrp(*no);

dcl-pi P4302;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2290.rpgleinc'
/copy 'qrpgleref/P3757.rpgleinc'
/copy 'qrpgleref/P3257.rpgleinc'

dcl-ds T1542 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1542 FROM T1542 LIMIT 1;

theCharVar = 'Hello from P4302';
dsply theCharVar;
callp localProc();
P2290();
P3757();
P3257();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4302 in the procedure';
end-proc;