**free

ctl-opt dftactgrp(*no);

dcl-pi P3157;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2402.rpgleinc'
/copy 'qrpgleref/P546.rpgleinc'
/copy 'qrpgleref/P1875.rpgleinc'

dcl-ds theTable extname('T521') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T521 LIMIT 1;

theCharVar = 'Hello from P3157';
dsply theCharVar;
callp localProc();
P2402();
P546();
P1875();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3157 in the procedure';
end-proc;