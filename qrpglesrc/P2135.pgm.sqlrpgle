**free

ctl-opt dftactgrp(*no);

dcl-pi P2135;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P303.rpgleinc'
/copy 'qrpgleref/P459.rpgleinc'
/copy 'qrpgleref/P965.rpgleinc'

dcl-ds T1233 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1233 FROM T1233 LIMIT 1;

theCharVar = 'Hello from P2135';
dsply theCharVar;
callp localProc();
P303();
P459();
P965();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2135 in the procedure';
end-proc;