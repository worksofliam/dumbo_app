**free

ctl-opt dftactgrp(*no);

dcl-pi P3222;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1128.rpgleinc'
/copy 'qrpgleref/P679.rpgleinc'
/copy 'qrpgleref/P3097.rpgleinc'

dcl-ds theTable extname('T366') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T366 LIMIT 1;

theCharVar = 'Hello from P3222';
dsply theCharVar;
callp localProc();
P1128();
P679();
P3097();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3222 in the procedure';
end-proc;