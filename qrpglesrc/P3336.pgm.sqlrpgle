**free

ctl-opt dftactgrp(*no);

dcl-pi P3336;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P93.rpgleinc'
/copy 'qrpgleref/P3228.rpgleinc'
/copy 'qrpgleref/P3032.rpgleinc'

dcl-ds theTable extname('T1119') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1119 LIMIT 1;

theCharVar = 'Hello from P3336';
dsply theCharVar;
callp localProc();
P93();
P3228();
P3032();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3336 in the procedure';
end-proc;