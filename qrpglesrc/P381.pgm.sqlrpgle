**free

ctl-opt dftactgrp(*no);

dcl-pi P381;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P304.rpgleinc'
/copy 'qrpgleref/P306.rpgleinc'
/copy 'qrpgleref/P206.rpgleinc'

dcl-ds theTable extname('T406') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T406 LIMIT 1;

theCharVar = 'Hello from P381';
dsply theCharVar;
callp localProc();
P304();
P306();
P206();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P381 in the procedure';
end-proc;