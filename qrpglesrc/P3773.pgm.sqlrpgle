**free

ctl-opt dftactgrp(*no);

dcl-pi P3773;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3576.rpgleinc'
/copy 'qrpgleref/P2589.rpgleinc'
/copy 'qrpgleref/P2889.rpgleinc'

dcl-ds theTable extname('T622') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T622 LIMIT 1;

theCharVar = 'Hello from P3773';
dsply theCharVar;
callp localProc();
P3576();
P2589();
P2889();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3773 in the procedure';
end-proc;