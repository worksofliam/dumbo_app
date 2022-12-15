**free

ctl-opt dftactgrp(*no);

dcl-pi P182;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P130.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P46.rpgleinc'

dcl-ds theTable extname('T1180') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1180 LIMIT 1;

theCharVar = 'Hello from P182';
dsply theCharVar;
callp localProc();
P130();
P38();
P46();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P182 in the procedure';
end-proc;