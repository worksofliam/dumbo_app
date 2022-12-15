**free

ctl-opt dftactgrp(*no);

dcl-pi P513;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'
/copy 'qrpgleref/P377.rpgleinc'

dcl-ds theTable extname('T219') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T219 LIMIT 1;

theCharVar = 'Hello from P513';
dsply theCharVar;
callp localProc();
P15();
P125();
P377();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P513 in the procedure';
end-proc;