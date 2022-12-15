**free

ctl-opt dftactgrp(*no);

dcl-pi P2383;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1399.rpgleinc'
/copy 'qrpgleref/P1549.rpgleinc'
/copy 'qrpgleref/P1948.rpgleinc'

dcl-ds theTable extname('T10') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T10 LIMIT 1;

theCharVar = 'Hello from P2383';
dsply theCharVar;
callp localProc();
P1399();
P1549();
P1948();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2383 in the procedure';
end-proc;