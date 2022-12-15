**free

ctl-opt dftactgrp(*no);

dcl-pi P230;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P127.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'

dcl-ds theTable extname('T230') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T230 LIMIT 1;

theCharVar = 'Hello from P230';
dsply theCharVar;
callp localProc();
P127();
P53();
P73();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P230 in the procedure';
end-proc;