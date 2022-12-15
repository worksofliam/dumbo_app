**free

ctl-opt dftactgrp(*no);

dcl-pi P3886;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1726.rpgleinc'
/copy 'qrpgleref/P400.rpgleinc'
/copy 'qrpgleref/P260.rpgleinc'

dcl-ds T1065 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1065 FROM T1065 LIMIT 1;

theCharVar = 'Hello from P3886';
dsply theCharVar;
callp localProc();
P1726();
P400();
P260();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3886 in the procedure';
end-proc;