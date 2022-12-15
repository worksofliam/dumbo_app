**free

ctl-opt dftactgrp(*no);

dcl-pi P486;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P116.rpgleinc'
/copy 'qrpgleref/P430.rpgleinc'

dcl-ds theTable extname('T14') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T14 LIMIT 1;

theCharVar = 'Hello from P486';
dsply theCharVar;
callp localProc();
P8();
P116();
P430();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P486 in the procedure';
end-proc;