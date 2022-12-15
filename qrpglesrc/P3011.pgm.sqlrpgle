**free

ctl-opt dftactgrp(*no);

dcl-pi P3011;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1134.rpgleinc'
/copy 'qrpgleref/P890.rpgleinc'
/copy 'qrpgleref/P2863.rpgleinc'

dcl-ds theTable extname('T851') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T851 LIMIT 1;

theCharVar = 'Hello from P3011';
dsply theCharVar;
callp localProc();
P1134();
P890();
P2863();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3011 in the procedure';
end-proc;