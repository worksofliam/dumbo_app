**free

ctl-opt dftactgrp(*no);

dcl-pi P2231;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1450.rpgleinc'
/copy 'qrpgleref/P1162.rpgleinc'
/copy 'qrpgleref/P1582.rpgleinc'

dcl-ds theTable extname('T60') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T60 LIMIT 1;

theCharVar = 'Hello from P2231';
dsply theCharVar;
callp localProc();
P1450();
P1162();
P1582();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2231 in the procedure';
end-proc;