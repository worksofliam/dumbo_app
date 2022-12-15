**free

ctl-opt dftactgrp(*no);

dcl-pi P1716;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1438.rpgleinc'
/copy 'qrpgleref/P554.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'

dcl-ds T1717 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1717 FROM T1717 LIMIT 1;

theCharVar = 'Hello from P1716';
dsply theCharVar;
callp localProc();
P1438();
P554();
P136();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1716 in the procedure';
end-proc;