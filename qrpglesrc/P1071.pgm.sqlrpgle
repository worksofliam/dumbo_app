**free

ctl-opt dftactgrp(*no);

dcl-pi P1071;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P510.rpgleinc'
/copy 'qrpgleref/P355.rpgleinc'

dcl-ds theTable extname('T1321') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1321 LIMIT 1;

theCharVar = 'Hello from P1071';
dsply theCharVar;
callp localProc();
P9();
P510();
P355();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1071 in the procedure';
end-proc;