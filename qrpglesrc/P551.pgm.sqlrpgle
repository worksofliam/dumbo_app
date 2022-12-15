**free

ctl-opt dftactgrp(*no);

dcl-pi P551;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P212.rpgleinc'
/copy 'qrpgleref/P353.rpgleinc'
/copy 'qrpgleref/P328.rpgleinc'

dcl-ds theTable extname('T7') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T7 LIMIT 1;

theCharVar = 'Hello from P551';
dsply theCharVar;
callp localProc();
P212();
P353();
P328();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P551 in the procedure';
end-proc;