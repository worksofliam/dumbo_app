**free

ctl-opt dftactgrp(*no);

dcl-pi P2741;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1986.rpgleinc'
/copy 'qrpgleref/P732.rpgleinc'
/copy 'qrpgleref/P1121.rpgleinc'

dcl-ds theTable extname('T181') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T181 LIMIT 1;

theCharVar = 'Hello from P2741';
dsply theCharVar;
callp localProc();
P1986();
P732();
P1121();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2741 in the procedure';
end-proc;