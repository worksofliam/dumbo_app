**free

ctl-opt dftactgrp(*no);

dcl-pi P960;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P925.rpgleinc'
/copy 'qrpgleref/P167.rpgleinc'
/copy 'qrpgleref/P512.rpgleinc'

dcl-ds theTable extname('T775') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T775 LIMIT 1;

theCharVar = 'Hello from P960';
dsply theCharVar;
callp localProc();
P925();
P167();
P512();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P960 in the procedure';
end-proc;