**free

ctl-opt dftactgrp(*no);

dcl-pi P1955;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P864.rpgleinc'
/copy 'qrpgleref/P1253.rpgleinc'
/copy 'qrpgleref/P1242.rpgleinc'

dcl-ds theTable extname('T139') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T139 LIMIT 1;

theCharVar = 'Hello from P1955';
dsply theCharVar;
callp localProc();
P864();
P1253();
P1242();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1955 in the procedure';
end-proc;