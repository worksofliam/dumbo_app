**free

ctl-opt dftactgrp(*no);

dcl-pi P3668;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1358.rpgleinc'
/copy 'qrpgleref/P2201.rpgleinc'
/copy 'qrpgleref/P2481.rpgleinc'

dcl-ds theTable extname('T214') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T214 LIMIT 1;

theCharVar = 'Hello from P3668';
dsply theCharVar;
callp localProc();
P1358();
P2201();
P2481();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3668 in the procedure';
end-proc;