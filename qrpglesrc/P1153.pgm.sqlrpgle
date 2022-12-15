**free

ctl-opt dftactgrp(*no);

dcl-pi P1153;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P199.rpgleinc'
/copy 'qrpgleref/P134.rpgleinc'
/copy 'qrpgleref/P884.rpgleinc'

dcl-ds theTable extname('T100') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T100 LIMIT 1;

theCharVar = 'Hello from P1153';
dsply theCharVar;
callp localProc();
P199();
P134();
P884();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1153 in the procedure';
end-proc;