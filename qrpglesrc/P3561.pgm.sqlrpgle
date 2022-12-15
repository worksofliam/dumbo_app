**free

ctl-opt dftactgrp(*no);

dcl-pi P3561;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2813.rpgleinc'
/copy 'qrpgleref/P1512.rpgleinc'
/copy 'qrpgleref/P1103.rpgleinc'

dcl-ds T822 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T822 FROM T822 LIMIT 1;

theCharVar = 'Hello from P3561';
dsply theCharVar;
callp localProc();
P2813();
P1512();
P1103();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3561 in the procedure';
end-proc;