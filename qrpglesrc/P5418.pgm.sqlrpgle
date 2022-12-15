**free

ctl-opt dftactgrp(*no);

dcl-pi P5418;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1272.rpgleinc'
/copy 'qrpgleref/P2526.rpgleinc'
/copy 'qrpgleref/P2586.rpgleinc'

dcl-ds theTable extname('T573') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T573 LIMIT 1;

theCharVar = 'Hello from P5418';
dsply theCharVar;
callp localProc();
P1272();
P2526();
P2586();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5418 in the procedure';
end-proc;