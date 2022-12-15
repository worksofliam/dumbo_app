**free

ctl-opt dftactgrp(*no);

dcl-pi P2356;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1184.rpgleinc'
/copy 'qrpgleref/P636.rpgleinc'
/copy 'qrpgleref/P920.rpgleinc'

dcl-ds T549 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T549 FROM T549 LIMIT 1;

theCharVar = 'Hello from P2356';
dsply theCharVar;
callp localProc();
P1184();
P636();
P920();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2356 in the procedure';
end-proc;