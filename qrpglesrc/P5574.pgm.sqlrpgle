**free

ctl-opt dftactgrp(*no);

dcl-pi P5574;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2815.rpgleinc'
/copy 'qrpgleref/P2770.rpgleinc'
/copy 'qrpgleref/P327.rpgleinc'

dcl-ds theTable extname('T1421') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1421 LIMIT 1;

theCharVar = 'Hello from P5574';
dsply theCharVar;
callp localProc();
P2815();
P2770();
P327();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5574 in the procedure';
end-proc;