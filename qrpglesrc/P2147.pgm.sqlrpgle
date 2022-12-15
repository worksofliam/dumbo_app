**free

ctl-opt dftactgrp(*no);

dcl-pi P2147;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1915.rpgleinc'
/copy 'qrpgleref/P268.rpgleinc'
/copy 'qrpgleref/P1062.rpgleinc'

dcl-ds T1233 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1233 FROM T1233 LIMIT 1;

theCharVar = 'Hello from P2147';
dsply theCharVar;
callp localProc();
P1915();
P268();
P1062();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2147 in the procedure';
end-proc;