**free

ctl-opt dftactgrp(*no);

dcl-pi P5468;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1921.rpgleinc'
/copy 'qrpgleref/P337.rpgleinc'
/copy 'qrpgleref/P652.rpgleinc'

dcl-ds theTable extname('T264') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T264 LIMIT 1;

theCharVar = 'Hello from P5468';
dsply theCharVar;
callp localProc();
P1921();
P337();
P652();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5468 in the procedure';
end-proc;