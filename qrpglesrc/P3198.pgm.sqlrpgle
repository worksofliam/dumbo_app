**free

ctl-opt dftactgrp(*no);

dcl-pi P3198;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1346.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P2362.rpgleinc'

dcl-ds theTable extname('T450') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T450 LIMIT 1;

theCharVar = 'Hello from P3198';
dsply theCharVar;
callp localProc();
P1346();
P27();
P2362();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3198 in the procedure';
end-proc;