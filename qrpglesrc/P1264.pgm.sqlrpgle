**free

ctl-opt dftactgrp(*no);

dcl-pi P1264;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1097.rpgleinc'
/copy 'qrpgleref/P140.rpgleinc'
/copy 'qrpgleref/P564.rpgleinc'

dcl-ds T434 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T434 FROM T434 LIMIT 1;

theCharVar = 'Hello from P1264';
dsply theCharVar;
callp localProc();
P1097();
P140();
P564();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1264 in the procedure';
end-proc;