**free

ctl-opt dftactgrp(*no);

dcl-pi P969;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P421.rpgleinc'
/copy 'qrpgleref/P152.rpgleinc'
/copy 'qrpgleref/P797.rpgleinc'

dcl-ds theTable extname('T20') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T20 LIMIT 1;

theCharVar = 'Hello from P969';
dsply theCharVar;
callp localProc();
P421();
P152();
P797();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P969 in the procedure';
end-proc;