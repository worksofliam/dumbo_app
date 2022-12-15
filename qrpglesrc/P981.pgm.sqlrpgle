**free

ctl-opt dftactgrp(*no);

dcl-pi P981;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P907.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P217.rpgleinc'

dcl-ds theTable extname('T255') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T255 LIMIT 1;

theCharVar = 'Hello from P981';
dsply theCharVar;
callp localProc();
P907();
P30();
P217();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P981 in the procedure';
end-proc;