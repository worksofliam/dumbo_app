**free

ctl-opt dftactgrp(*no);

dcl-pi P1164;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P928.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P438.rpgleinc'

dcl-ds T492 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T492 FROM T492 LIMIT 1;

theCharVar = 'Hello from P1164';
dsply theCharVar;
callp localProc();
P928();
P164();
P438();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1164 in the procedure';
end-proc;