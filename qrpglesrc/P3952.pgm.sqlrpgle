**free

ctl-opt dftactgrp(*no);

dcl-pi P3952;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3534.rpgleinc'
/copy 'qrpgleref/P1440.rpgleinc'
/copy 'qrpgleref/P3740.rpgleinc'

dcl-ds theTable extname('T1089') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1089 LIMIT 1;

theCharVar = 'Hello from P3952';
dsply theCharVar;
callp localProc();
P3534();
P1440();
P3740();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3952 in the procedure';
end-proc;