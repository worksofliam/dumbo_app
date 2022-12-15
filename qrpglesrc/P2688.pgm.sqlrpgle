**free

ctl-opt dftactgrp(*no);

dcl-pi P2688;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2577.rpgleinc'
/copy 'qrpgleref/P2531.rpgleinc'
/copy 'qrpgleref/P250.rpgleinc'

dcl-ds theTable extname('T801') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T801 LIMIT 1;

theCharVar = 'Hello from P2688';
dsply theCharVar;
callp localProc();
P2577();
P2531();
P250();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2688 in the procedure';
end-proc;