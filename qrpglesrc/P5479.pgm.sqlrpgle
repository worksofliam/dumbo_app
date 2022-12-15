**free

ctl-opt dftactgrp(*no);

dcl-pi P5479;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3133.rpgleinc'
/copy 'qrpgleref/P344.rpgleinc'
/copy 'qrpgleref/P2572.rpgleinc'

dcl-ds T927 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T927 FROM T927 LIMIT 1;

theCharVar = 'Hello from P5479';
dsply theCharVar;
callp localProc();
P3133();
P344();
P2572();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5479 in the procedure';
end-proc;