**free

ctl-opt dftactgrp(*no);

dcl-pi P1320;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P635.rpgleinc'
/copy 'qrpgleref/P412.rpgleinc'
/copy 'qrpgleref/P1098.rpgleinc'

dcl-ds theTable extname('T1535') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1535 LIMIT 1;

theCharVar = 'Hello from P1320';
dsply theCharVar;
callp localProc();
P635();
P412();
P1098();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1320 in the procedure';
end-proc;