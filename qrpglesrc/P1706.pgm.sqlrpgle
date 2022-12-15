**free

ctl-opt dftactgrp(*no);

dcl-pi P1706;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P560.rpgleinc'
/copy 'qrpgleref/P710.rpgleinc'
/copy 'qrpgleref/P1032.rpgleinc'

dcl-ds theTable extname('T1317') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1317 LIMIT 1;

theCharVar = 'Hello from P1706';
dsply theCharVar;
callp localProc();
P560();
P710();
P1032();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1706 in the procedure';
end-proc;