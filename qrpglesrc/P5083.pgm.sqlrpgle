**free

ctl-opt dftactgrp(*no);

dcl-pi P5083;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1591.rpgleinc'
/copy 'qrpgleref/P2018.rpgleinc'
/copy 'qrpgleref/P3759.rpgleinc'

dcl-ds theTable extname('T336') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T336 LIMIT 1;

theCharVar = 'Hello from P5083';
dsply theCharVar;
callp localProc();
P1591();
P2018();
P3759();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5083 in the procedure';
end-proc;