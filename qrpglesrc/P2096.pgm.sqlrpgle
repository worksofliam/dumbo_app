**free

ctl-opt dftactgrp(*no);

dcl-pi P2096;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P638.rpgleinc'
/copy 'qrpgleref/P975.rpgleinc'
/copy 'qrpgleref/P336.rpgleinc'

dcl-ds T671 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T671 FROM T671 LIMIT 1;

theCharVar = 'Hello from P2096';
dsply theCharVar;
callp localProc();
P638();
P975();
P336();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2096 in the procedure';
end-proc;