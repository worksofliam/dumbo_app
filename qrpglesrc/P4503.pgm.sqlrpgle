**free

ctl-opt dftactgrp(*no);

dcl-pi P4503;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P621.rpgleinc'
/copy 'qrpgleref/P1249.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'

dcl-ds T1265 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1265 FROM T1265 LIMIT 1;

theCharVar = 'Hello from P4503';
dsply theCharVar;
callp localProc();
P621();
P1249();
P9();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4503 in the procedure';
end-proc;