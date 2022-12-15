**free

ctl-opt dftactgrp(*no);

dcl-pi P5217;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3320.rpgleinc'
/copy 'qrpgleref/P4259.rpgleinc'
/copy 'qrpgleref/P1145.rpgleinc'

dcl-ds theTable extname('T22') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T22 LIMIT 1;

theCharVar = 'Hello from P5217';
dsply theCharVar;
callp localProc();
P3320();
P4259();
P1145();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5217 in the procedure';
end-proc;