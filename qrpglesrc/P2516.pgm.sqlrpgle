**free

ctl-opt dftactgrp(*no);

dcl-pi P2516;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1003.rpgleinc'
/copy 'qrpgleref/P1861.rpgleinc'
/copy 'qrpgleref/P629.rpgleinc'

dcl-ds T902 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T902 FROM T902 LIMIT 1;

theCharVar = 'Hello from P2516';
dsply theCharVar;
callp localProc();
P1003();
P1861();
P629();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2516 in the procedure';
end-proc;