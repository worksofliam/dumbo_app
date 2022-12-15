**free

ctl-opt dftactgrp(*no);

dcl-pi P3663;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3051.rpgleinc'
/copy 'qrpgleref/P3068.rpgleinc'
/copy 'qrpgleref/P2788.rpgleinc'

dcl-ds T1377 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1377 FROM T1377 LIMIT 1;

theCharVar = 'Hello from P3663';
dsply theCharVar;
callp localProc();
P3051();
P3068();
P2788();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3663 in the procedure';
end-proc;