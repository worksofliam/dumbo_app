**free

ctl-opt dftactgrp(*no);

dcl-pi P271;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P105.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds theTable extname('T270') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T270 LIMIT 1;

theCharVar = 'Hello from P271';
dsply theCharVar;
callp localProc();
P105();
P74();
P1();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P271 in the procedure';
end-proc;