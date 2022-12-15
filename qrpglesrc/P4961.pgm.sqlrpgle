**free

ctl-opt dftactgrp(*no);

dcl-pi P4961;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1010.rpgleinc'
/copy 'qrpgleref/P2814.rpgleinc'
/copy 'qrpgleref/P3970.rpgleinc'

dcl-ds theTable extname('T323') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T323 LIMIT 1;

theCharVar = 'Hello from P4961';
dsply theCharVar;
callp localProc();
P1010();
P2814();
P3970();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4961 in the procedure';
end-proc;