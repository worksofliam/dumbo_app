**free

ctl-opt dftactgrp(*no);

dcl-pi P1091;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P448.rpgleinc'
/copy 'qrpgleref/P806.rpgleinc'
/copy 'qrpgleref/P512.rpgleinc'

dcl-ds theTable extname('T6') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T6 LIMIT 1;

theCharVar = 'Hello from P1091';
dsply theCharVar;
callp localProc();
P448();
P806();
P512();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1091 in the procedure';
end-proc;