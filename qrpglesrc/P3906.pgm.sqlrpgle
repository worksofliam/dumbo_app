**free

ctl-opt dftactgrp(*no);

dcl-pi P3906;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P532.rpgleinc'
/copy 'qrpgleref/P2295.rpgleinc'
/copy 'qrpgleref/P412.rpgleinc'

dcl-ds T1727 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1727 FROM T1727 LIMIT 1;

theCharVar = 'Hello from P3906';
dsply theCharVar;
callp localProc();
P532();
P2295();
P412();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3906 in the procedure';
end-proc;