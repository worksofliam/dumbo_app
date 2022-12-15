**free

ctl-opt dftactgrp(*no);

dcl-pi P511;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P276.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'

dcl-ds theTable extname('T42') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T42 LIMIT 1;

theCharVar = 'Hello from P511';
dsply theCharVar;
callp localProc();
P276();
P53();
P39();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P511 in the procedure';
end-proc;