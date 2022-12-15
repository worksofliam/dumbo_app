**free

ctl-opt dftactgrp(*no);

dcl-pi P4086;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4029.rpgleinc'
/copy 'qrpgleref/P1859.rpgleinc'
/copy 'qrpgleref/P2833.rpgleinc'

dcl-ds T991 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T991 FROM T991 LIMIT 1;

theCharVar = 'Hello from P4086';
dsply theCharVar;
callp localProc();
P4029();
P1859();
P2833();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4086 in the procedure';
end-proc;