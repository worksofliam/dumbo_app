**free

ctl-opt dftactgrp(*no);

dcl-pi P2374;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P857.rpgleinc'
/copy 'qrpgleref/P587.rpgleinc'
/copy 'qrpgleref/P1563.rpgleinc'

dcl-ds theTable extname('T998') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T998 LIMIT 1;

theCharVar = 'Hello from P2374';
dsply theCharVar;
callp localProc();
P857();
P587();
P1563();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2374 in the procedure';
end-proc;