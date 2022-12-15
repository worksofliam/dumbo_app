**free

ctl-opt dftactgrp(*no);

dcl-pi P1519;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P605.rpgleinc'
/copy 'qrpgleref/P1145.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'

dcl-ds theTable extname('T968') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T968 LIMIT 1;

theCharVar = 'Hello from P1519';
dsply theCharVar;
callp localProc();
P605();
P1145();
P172();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1519 in the procedure';
end-proc;