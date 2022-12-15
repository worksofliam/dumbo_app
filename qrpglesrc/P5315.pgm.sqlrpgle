**free

ctl-opt dftactgrp(*no);

dcl-pi P5315;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3269.rpgleinc'
/copy 'qrpgleref/P2834.rpgleinc'
/copy 'qrpgleref/P1152.rpgleinc'

dcl-ds T1667 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1667 FROM T1667 LIMIT 1;

theCharVar = 'Hello from P5315';
dsply theCharVar;
callp localProc();
P3269();
P2834();
P1152();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5315 in the procedure';
end-proc;