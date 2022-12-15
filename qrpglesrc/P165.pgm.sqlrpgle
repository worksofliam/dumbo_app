**free

ctl-opt dftactgrp(*no);

dcl-pi P165;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P126.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'

dcl-ds theTable extname('T47') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T47 LIMIT 1;

theCharVar = 'Hello from P165';
dsply theCharVar;
callp localProc();
P3();
P126();
P21();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P165 in the procedure';
end-proc;