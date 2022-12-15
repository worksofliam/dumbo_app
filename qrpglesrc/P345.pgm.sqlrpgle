**free

ctl-opt dftactgrp(*no);

dcl-pi P345;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P108.rpgleinc'

dcl-ds T1622 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1622 FROM T1622 LIMIT 1;

theCharVar = 'Hello from P345';
dsply theCharVar;
callp localProc();
P146();
P5();
P108();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P345 in the procedure';
end-proc;