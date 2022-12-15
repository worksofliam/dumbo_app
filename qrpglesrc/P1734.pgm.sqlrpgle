**free

ctl-opt dftactgrp(*no);

dcl-pi P1734;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P165.rpgleinc'
/copy 'qrpgleref/P838.rpgleinc'
/copy 'qrpgleref/P786.rpgleinc'

dcl-ds T708 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T708 FROM T708 LIMIT 1;

theCharVar = 'Hello from P1734';
dsply theCharVar;
callp localProc();
P165();
P838();
P786();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1734 in the procedure';
end-proc;