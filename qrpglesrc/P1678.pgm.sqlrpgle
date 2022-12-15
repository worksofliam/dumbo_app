**free

ctl-opt dftactgrp(*no);

dcl-pi P1678;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P598.rpgleinc'
/copy 'qrpgleref/P798.rpgleinc'
/copy 'qrpgleref/P924.rpgleinc'

dcl-ds T1715 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1715 FROM T1715 LIMIT 1;

theCharVar = 'Hello from P1678';
dsply theCharVar;
callp localProc();
P598();
P798();
P924();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1678 in the procedure';
end-proc;