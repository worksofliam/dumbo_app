**free

ctl-opt dftactgrp(*no);

dcl-pi P5464;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3551.rpgleinc'
/copy 'qrpgleref/P1292.rpgleinc'
/copy 'qrpgleref/P3915.rpgleinc'

dcl-ds theTable extname('T720') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T720 LIMIT 1;

theCharVar = 'Hello from P5464';
dsply theCharVar;
callp localProc();
P3551();
P1292();
P3915();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5464 in the procedure';
end-proc;