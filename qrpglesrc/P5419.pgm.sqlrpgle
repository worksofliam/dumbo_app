**free

ctl-opt dftactgrp(*no);

dcl-pi P5419;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1626.rpgleinc'
/copy 'qrpgleref/P2292.rpgleinc'
/copy 'qrpgleref/P1637.rpgleinc'

dcl-ds theTable extname('T1588') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1588 LIMIT 1;

theCharVar = 'Hello from P5419';
dsply theCharVar;
callp localProc();
P1626();
P2292();
P1637();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5419 in the procedure';
end-proc;