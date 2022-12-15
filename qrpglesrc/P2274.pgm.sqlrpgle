**free

ctl-opt dftactgrp(*no);

dcl-pi P2274;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P591.rpgleinc'
/copy 'qrpgleref/P1649.rpgleinc'
/copy 'qrpgleref/P319.rpgleinc'

dcl-ds T883 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T883 FROM T883 LIMIT 1;

theCharVar = 'Hello from P2274';
dsply theCharVar;
callp localProc();
P591();
P1649();
P319();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2274 in the procedure';
end-proc;