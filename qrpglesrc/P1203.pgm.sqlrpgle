**free

ctl-opt dftactgrp(*no);

dcl-pi P1203;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1182.rpgleinc'
/copy 'qrpgleref/P241.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'

dcl-ds theTable extname('T351') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T351 LIMIT 1;

theCharVar = 'Hello from P1203';
dsply theCharVar;
callp localProc();
P1182();
P241();
P50();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1203 in the procedure';
end-proc;