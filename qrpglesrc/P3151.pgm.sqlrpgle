**free

ctl-opt dftactgrp(*no);

dcl-pi P3151;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2402.rpgleinc'
/copy 'qrpgleref/P534.rpgleinc'
/copy 'qrpgleref/P1133.rpgleinc'

dcl-ds T575 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T575 FROM T575 LIMIT 1;

theCharVar = 'Hello from P3151';
dsply theCharVar;
callp localProc();
P2402();
P534();
P1133();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3151 in the procedure';
end-proc;