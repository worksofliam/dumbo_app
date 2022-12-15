**free

ctl-opt dftactgrp(*no);

dcl-pi P822;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P642.rpgleinc'
/copy 'qrpgleref/P165.rpgleinc'

dcl-ds T134 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T134 FROM T134 LIMIT 1;

theCharVar = 'Hello from P822';
dsply theCharVar;
callp localProc();
P40();
P642();
P165();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P822 in the procedure';
end-proc;