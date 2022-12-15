**free

ctl-opt dftactgrp(*no);

dcl-pi P1886;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1665.rpgleinc'
/copy 'qrpgleref/P1468.rpgleinc'
/copy 'qrpgleref/P1014.rpgleinc'

dcl-ds T1349 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1349 FROM T1349 LIMIT 1;

theCharVar = 'Hello from P1886';
dsply theCharVar;
callp localProc();
P1665();
P1468();
P1014();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1886 in the procedure';
end-proc;