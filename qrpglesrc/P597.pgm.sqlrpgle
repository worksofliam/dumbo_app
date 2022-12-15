**free

ctl-opt dftactgrp(*no);

dcl-pi P597;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P53.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'
/copy 'qrpgleref/P203.rpgleinc'

dcl-ds theTable extname('T406') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T406 LIMIT 1;

theCharVar = 'Hello from P597';
dsply theCharVar;
callp localProc();
P53();
P207();
P203();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P597 in the procedure';
end-proc;