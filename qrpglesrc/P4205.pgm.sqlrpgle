**free

ctl-opt dftactgrp(*no);

dcl-pi P4205;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3700.rpgleinc'
/copy 'qrpgleref/P4129.rpgleinc'
/copy 'qrpgleref/P567.rpgleinc'

dcl-ds theTable extname('T405') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T405 LIMIT 1;

theCharVar = 'Hello from P4205';
dsply theCharVar;
callp localProc();
P3700();
P4129();
P567();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4205 in the procedure';
end-proc;