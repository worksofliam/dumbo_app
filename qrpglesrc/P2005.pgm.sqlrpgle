**free

ctl-opt dftactgrp(*no);

dcl-pi P2005;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1517.rpgleinc'
/copy 'qrpgleref/P222.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'

dcl-ds T1565 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1565 FROM T1565 LIMIT 1;

theCharVar = 'Hello from P2005';
dsply theCharVar;
callp localProc();
P1517();
P222();
P105();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2005 in the procedure';
end-proc;