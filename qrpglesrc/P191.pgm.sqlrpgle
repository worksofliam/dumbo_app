**free

ctl-opt dftactgrp(*no);

dcl-pi P191;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'

dcl-ds theTable extname('T902') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T902 LIMIT 1;

theCharVar = 'Hello from P191';
dsply theCharVar;
callp localProc();
P175();
P30();
P164();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P191 in the procedure';
end-proc;