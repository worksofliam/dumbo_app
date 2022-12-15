**free

ctl-opt dftactgrp(*no);

dcl-pi P3496;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2709.rpgleinc'
/copy 'qrpgleref/P1921.rpgleinc'
/copy 'qrpgleref/P1476.rpgleinc'

dcl-ds theTable extname('T1123') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1123 LIMIT 1;

theCharVar = 'Hello from P3496';
dsply theCharVar;
callp localProc();
P2709();
P1921();
P1476();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3496 in the procedure';
end-proc;