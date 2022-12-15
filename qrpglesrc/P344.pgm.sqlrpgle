**free

ctl-opt dftactgrp(*no);

dcl-pi P344;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P304.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'

dcl-ds theTable extname('T385') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T385 LIMIT 1;

theCharVar = 'Hello from P344';
dsply theCharVar;
callp localProc();
P304();
P22();
P172();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P344 in the procedure';
end-proc;