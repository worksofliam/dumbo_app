**free

ctl-opt dftactgrp(*no);

dcl-pi P1995;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P804.rpgleinc'
/copy 'qrpgleref/P957.rpgleinc'
/copy 'qrpgleref/P974.rpgleinc'

dcl-ds theTable extname('T166') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T166 LIMIT 1;

theCharVar = 'Hello from P1995';
dsply theCharVar;
callp localProc();
P804();
P957();
P974();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1995 in the procedure';
end-proc;