**free

ctl-opt dftactgrp(*no);

dcl-pi P1190;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P276.rpgleinc'
/copy 'qrpgleref/P140.rpgleinc'
/copy 'qrpgleref/P512.rpgleinc'

dcl-ds theTable extname('T96') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T96 LIMIT 1;

theCharVar = 'Hello from P1190';
dsply theCharVar;
callp localProc();
P276();
P140();
P512();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1190 in the procedure';
end-proc;