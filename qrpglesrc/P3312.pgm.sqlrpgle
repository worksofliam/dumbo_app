**free

ctl-opt dftactgrp(*no);

dcl-pi P3312;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2000.rpgleinc'
/copy 'qrpgleref/P1049.rpgleinc'
/copy 'qrpgleref/P3252.rpgleinc'

dcl-ds theTable extname('T612') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T612 LIMIT 1;

theCharVar = 'Hello from P3312';
dsply theCharVar;
callp localProc();
P2000();
P1049();
P3252();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3312 in the procedure';
end-proc;