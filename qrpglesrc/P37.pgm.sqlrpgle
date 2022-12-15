**free

ctl-opt dftactgrp(*no);

dcl-pi P37;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'

dcl-ds theTable extname('T534') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T534 LIMIT 1;

theCharVar = 'Hello from P37';
dsply theCharVar;
callp localProc();
P28();
P3();
P11();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P37 in the procedure';
end-proc;