**free

ctl-opt dftactgrp(*no);

dcl-pi P2763;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1034.rpgleinc'
/copy 'qrpgleref/P1951.rpgleinc'
/copy 'qrpgleref/P2227.rpgleinc'

dcl-ds theTable extname('T895') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T895 LIMIT 1;

theCharVar = 'Hello from P2763';
dsply theCharVar;
callp localProc();
P1034();
P1951();
P2227();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2763 in the procedure';
end-proc;