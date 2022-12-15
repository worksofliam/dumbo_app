**free

ctl-opt dftactgrp(*no);

dcl-pi P2627;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2360.rpgleinc'
/copy 'qrpgleref/P1251.rpgleinc'
/copy 'qrpgleref/P2188.rpgleinc'

dcl-ds T1612 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1612 FROM T1612 LIMIT 1;

theCharVar = 'Hello from P2627';
dsply theCharVar;
callp localProc();
P2360();
P1251();
P2188();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2627 in the procedure';
end-proc;