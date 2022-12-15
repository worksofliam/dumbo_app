**free

ctl-opt dftactgrp(*no);

dcl-pi P1401;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1262.rpgleinc'
/copy 'qrpgleref/P599.rpgleinc'
/copy 'qrpgleref/P797.rpgleinc'

dcl-ds theTable extname('T1384') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1384 LIMIT 1;

theCharVar = 'Hello from P1401';
dsply theCharVar;
callp localProc();
P1262();
P599();
P797();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1401 in the procedure';
end-proc;