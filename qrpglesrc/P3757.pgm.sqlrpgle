**free

ctl-opt dftactgrp(*no);

dcl-pi P3757;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P709.rpgleinc'
/copy 'qrpgleref/P2648.rpgleinc'
/copy 'qrpgleref/P3605.rpgleinc'

dcl-ds T1250 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1250 FROM T1250 LIMIT 1;

theCharVar = 'Hello from P3757';
dsply theCharVar;
callp localProc();
P709();
P2648();
P3605();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3757 in the procedure';
end-proc;