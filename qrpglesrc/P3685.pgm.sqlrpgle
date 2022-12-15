**free

ctl-opt dftactgrp(*no);

dcl-pi P3685;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3014.rpgleinc'
/copy 'qrpgleref/P867.rpgleinc'
/copy 'qrpgleref/P3654.rpgleinc'

dcl-ds theTable extname('T1232') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1232 LIMIT 1;

theCharVar = 'Hello from P3685';
dsply theCharVar;
callp localProc();
P3014();
P867();
P3654();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3685 in the procedure';
end-proc;