**free

ctl-opt dftactgrp(*no);

dcl-pi P3575;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P590.rpgleinc'
/copy 'qrpgleref/P1866.rpgleinc'
/copy 'qrpgleref/P374.rpgleinc'

dcl-ds T1168 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1168 FROM T1168 LIMIT 1;

theCharVar = 'Hello from P3575';
dsply theCharVar;
callp localProc();
P590();
P1866();
P374();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3575 in the procedure';
end-proc;