**free

ctl-opt dftactgrp(*no);

dcl-pi P3834;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P788.rpgleinc'
/copy 'qrpgleref/P258.rpgleinc'
/copy 'qrpgleref/P3023.rpgleinc'

dcl-ds theTable extname('T1022') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1022 LIMIT 1;

theCharVar = 'Hello from P3834';
dsply theCharVar;
callp localProc();
P788();
P258();
P3023();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3834 in the procedure';
end-proc;