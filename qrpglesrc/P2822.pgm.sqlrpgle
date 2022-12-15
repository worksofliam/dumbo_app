**free

ctl-opt dftactgrp(*no);

dcl-pi P2822;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P599.rpgleinc'
/copy 'qrpgleref/P2278.rpgleinc'
/copy 'qrpgleref/P1363.rpgleinc'

dcl-ds T954 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T954 FROM T954 LIMIT 1;

theCharVar = 'Hello from P2822';
dsply theCharVar;
callp localProc();
P599();
P2278();
P1363();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2822 in the procedure';
end-proc;