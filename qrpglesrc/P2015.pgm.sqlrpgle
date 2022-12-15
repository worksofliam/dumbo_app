**free

ctl-opt dftactgrp(*no);

dcl-pi P2015;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P1483.rpgleinc'
/copy 'qrpgleref/P1027.rpgleinc'

dcl-ds T1159 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1159 FROM T1159 LIMIT 1;

theCharVar = 'Hello from P2015';
dsply theCharVar;
callp localProc();
P108();
P1483();
P1027();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2015 in the procedure';
end-proc;