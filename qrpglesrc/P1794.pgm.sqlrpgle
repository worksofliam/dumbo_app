**free

ctl-opt dftactgrp(*no);

dcl-pi P1794;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1175.rpgleinc'
/copy 'qrpgleref/P274.rpgleinc'
/copy 'qrpgleref/P908.rpgleinc'

dcl-ds T1697 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1697 FROM T1697 LIMIT 1;

theCharVar = 'Hello from P1794';
dsply theCharVar;
callp localProc();
P1175();
P274();
P908();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1794 in the procedure';
end-proc;