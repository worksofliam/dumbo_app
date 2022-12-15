**free

ctl-opt dftactgrp(*no);

dcl-pi P2981;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P258.rpgleinc'
/copy 'qrpgleref/P1812.rpgleinc'
/copy 'qrpgleref/P2839.rpgleinc'

dcl-ds theTable extname('T831') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T831 LIMIT 1;

theCharVar = 'Hello from P2981';
dsply theCharVar;
callp localProc();
P258();
P1812();
P2839();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2981 in the procedure';
end-proc;