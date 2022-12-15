**free

ctl-opt dftactgrp(*no);

dcl-pi P4762;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2081.rpgleinc'
/copy 'qrpgleref/P3045.rpgleinc'
/copy 'qrpgleref/P3994.rpgleinc'

dcl-ds T456 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T456 FROM T456 LIMIT 1;

theCharVar = 'Hello from P4762';
dsply theCharVar;
callp localProc();
P2081();
P3045();
P3994();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4762 in the procedure';
end-proc;