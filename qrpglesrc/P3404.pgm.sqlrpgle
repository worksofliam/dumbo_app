**free

ctl-opt dftactgrp(*no);

dcl-pi P3404;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3003.rpgleinc'
/copy 'qrpgleref/P2008.rpgleinc'
/copy 'qrpgleref/P2872.rpgleinc'

dcl-ds theTable extname('T295') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T295 LIMIT 1;

theCharVar = 'Hello from P3404';
dsply theCharVar;
callp localProc();
P3003();
P2008();
P2872();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3404 in the procedure';
end-proc;