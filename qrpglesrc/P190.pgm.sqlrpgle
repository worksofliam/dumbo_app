**free

ctl-opt dftactgrp(*no);

dcl-pi P190;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P100.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'
/copy 'qrpgleref/P108.rpgleinc'

dcl-ds T66 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T66 FROM T66 LIMIT 1;

theCharVar = 'Hello from P190';
dsply theCharVar;
callp localProc();
P100();
P105();
P108();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P190 in the procedure';
end-proc;