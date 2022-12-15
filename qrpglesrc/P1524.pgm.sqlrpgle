**free

ctl-opt dftactgrp(*no);

dcl-pi P1524;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P658.rpgleinc'
/copy 'qrpgleref/P1006.rpgleinc'
/copy 'qrpgleref/P1011.rpgleinc'

dcl-ds theTable extname('T701') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T701 LIMIT 1;

theCharVar = 'Hello from P1524';
dsply theCharVar;
callp localProc();
P658();
P1006();
P1011();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1524 in the procedure';
end-proc;