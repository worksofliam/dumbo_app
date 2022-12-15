**free

ctl-opt dftactgrp(*no);

dcl-pi P1285;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1154.rpgleinc'
/copy 'qrpgleref/P92.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds theTable extname('T403') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T403 LIMIT 1;

theCharVar = 'Hello from P1285';
dsply theCharVar;
callp localProc();
P1154();
P92();
P12();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1285 in the procedure';
end-proc;