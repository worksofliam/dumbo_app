**free

ctl-opt dftactgrp(*no);

dcl-pi P5357;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P757.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P4152.rpgleinc'

dcl-ds theTable extname('T1120') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1120 LIMIT 1;

theCharVar = 'Hello from P5357';
dsply theCharVar;
callp localProc();
P757();
P29();
P4152();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5357 in the procedure';
end-proc;