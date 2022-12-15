**free

ctl-opt dftactgrp(*no);

dcl-pi P1380;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P572.rpgleinc'
/copy 'qrpgleref/P414.rpgleinc'
/copy 'qrpgleref/P831.rpgleinc'

dcl-ds T1685 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1685 FROM T1685 LIMIT 1;

theCharVar = 'Hello from P1380';
dsply theCharVar;
callp localProc();
P572();
P414();
P831();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1380 in the procedure';
end-proc;