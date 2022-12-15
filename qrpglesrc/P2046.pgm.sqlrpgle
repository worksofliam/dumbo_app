**free

ctl-opt dftactgrp(*no);

dcl-pi P2046;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P312.rpgleinc'
/copy 'qrpgleref/P1703.rpgleinc'
/copy 'qrpgleref/P1059.rpgleinc'

dcl-ds T602 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T602 FROM T602 LIMIT 1;

theCharVar = 'Hello from P2046';
dsply theCharVar;
callp localProc();
P312();
P1703();
P1059();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2046 in the procedure';
end-proc;