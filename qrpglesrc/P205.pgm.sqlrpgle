**free

ctl-opt dftactgrp(*no);

dcl-pi P205;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P183.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P165.rpgleinc'

dcl-ds theTable extname('T265') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T265 LIMIT 1;

theCharVar = 'Hello from P205';
dsply theCharVar;
callp localProc();
P183();
P5();
P165();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P205 in the procedure';
end-proc;