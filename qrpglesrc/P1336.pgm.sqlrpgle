**free

ctl-opt dftactgrp(*no);

dcl-pi P1336;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1088.rpgleinc'
/copy 'qrpgleref/P721.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'

dcl-ds theTable extname('T921') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T921 LIMIT 1;

theCharVar = 'Hello from P1336';
dsply theCharVar;
callp localProc();
P1088();
P721();
P132();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1336 in the procedure';
end-proc;