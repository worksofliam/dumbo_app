**free

ctl-opt dftactgrp(*no);

dcl-pi P3700;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3452.rpgleinc'
/copy 'qrpgleref/P2647.rpgleinc'
/copy 'qrpgleref/P3585.rpgleinc'

dcl-ds theTable extname('T181') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T181 LIMIT 1;

theCharVar = 'Hello from P3700';
dsply theCharVar;
callp localProc();
P3452();
P2647();
P3585();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3700 in the procedure';
end-proc;