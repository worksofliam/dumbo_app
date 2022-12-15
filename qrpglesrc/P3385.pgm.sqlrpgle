**free

ctl-opt dftactgrp(*no);

dcl-pi P3385;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3284.rpgleinc'
/copy 'qrpgleref/P2743.rpgleinc'
/copy 'qrpgleref/P259.rpgleinc'

dcl-ds T1221 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1221 FROM T1221 LIMIT 1;

theCharVar = 'Hello from P3385';
dsply theCharVar;
callp localProc();
P3284();
P2743();
P259();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3385 in the procedure';
end-proc;