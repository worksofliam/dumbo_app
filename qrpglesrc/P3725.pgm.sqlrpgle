**free

ctl-opt dftactgrp(*no);

dcl-pi P3725;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3469.rpgleinc'
/copy 'qrpgleref/P2771.rpgleinc'
/copy 'qrpgleref/P1015.rpgleinc'

dcl-ds theTable extname('T1070') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1070 LIMIT 1;

theCharVar = 'Hello from P3725';
dsply theCharVar;
callp localProc();
P3469();
P2771();
P1015();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3725 in the procedure';
end-proc;