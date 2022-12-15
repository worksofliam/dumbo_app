**free

ctl-opt dftactgrp(*no);

dcl-pi P3596;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3462.rpgleinc'
/copy 'qrpgleref/P474.rpgleinc'
/copy 'qrpgleref/P1893.rpgleinc'

dcl-ds T244 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T244 FROM T244 LIMIT 1;

theCharVar = 'Hello from P3596';
dsply theCharVar;
callp localProc();
P3462();
P474();
P1893();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3596 in the procedure';
end-proc;