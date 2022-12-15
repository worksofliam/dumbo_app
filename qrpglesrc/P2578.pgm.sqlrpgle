**free

ctl-opt dftactgrp(*no);

dcl-pi P2578;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1399.rpgleinc'
/copy 'qrpgleref/P307.rpgleinc'
/copy 'qrpgleref/P2536.rpgleinc'

dcl-ds T226 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T226 FROM T226 LIMIT 1;

theCharVar = 'Hello from P2578';
dsply theCharVar;
callp localProc();
P1399();
P307();
P2536();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2578 in the procedure';
end-proc;