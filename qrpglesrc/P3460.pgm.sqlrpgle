**free

ctl-opt dftactgrp(*no);

dcl-pi P3460;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3452.rpgleinc'
/copy 'qrpgleref/P553.rpgleinc'
/copy 'qrpgleref/P2762.rpgleinc'

dcl-ds T1584 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1584 FROM T1584 LIMIT 1;

theCharVar = 'Hello from P3460';
dsply theCharVar;
callp localProc();
P3452();
P553();
P2762();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3460 in the procedure';
end-proc;