**free

ctl-opt dftactgrp(*no);

dcl-pi P616;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P304.rpgleinc'
/copy 'qrpgleref/P342.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'

dcl-ds theTable extname('T135') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T135 LIMIT 1;

theCharVar = 'Hello from P616';
dsply theCharVar;
callp localProc();
P304();
P342();
P162();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P616 in the procedure';
end-proc;