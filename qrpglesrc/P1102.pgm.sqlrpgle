**free

ctl-opt dftactgrp(*no);

dcl-pi P1102;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P355.rpgleinc'

dcl-ds theTable extname('T144') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T144 LIMIT 1;

theCharVar = 'Hello from P1102';
dsply theCharVar;
callp localProc();
P72();
P35();
P355();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1102 in the procedure';
end-proc;