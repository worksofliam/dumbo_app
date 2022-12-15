**free

ctl-opt dftactgrp(*no);

dcl-pi P1764;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P870.rpgleinc'
/copy 'qrpgleref/P1737.rpgleinc'
/copy 'qrpgleref/P1370.rpgleinc'

dcl-ds theTable extname('T852') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T852 LIMIT 1;

theCharVar = 'Hello from P1764';
dsply theCharVar;
callp localProc();
P870();
P1737();
P1370();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1764 in the procedure';
end-proc;