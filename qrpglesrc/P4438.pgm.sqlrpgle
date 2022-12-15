**free

ctl-opt dftactgrp(*no);

dcl-pi P4438;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P237.rpgleinc'
/copy 'qrpgleref/P589.rpgleinc'
/copy 'qrpgleref/P2146.rpgleinc'

dcl-ds T71 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T71 FROM T71 LIMIT 1;

theCharVar = 'Hello from P4438';
dsply theCharVar;
callp localProc();
P237();
P589();
P2146();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4438 in the procedure';
end-proc;