**free

ctl-opt dftactgrp(*no);

dcl-pi P3575;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1138.rpgleinc'
/copy 'qrpgleref/P1181.rpgleinc'
/copy 'qrpgleref/P1509.rpgleinc'

dcl-ds theTable extname('T425') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T425 LIMIT 1;

theCharVar = 'Hello from P3575';
dsply theCharVar;
callp localProc();
P1138();
P1181();
P1509();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3575 in the procedure';
end-proc;