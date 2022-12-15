**free

ctl-opt dftactgrp(*no);

dcl-pi P5024;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4857.rpgleinc'
/copy 'qrpgleref/P312.rpgleinc'
/copy 'qrpgleref/P1652.rpgleinc'

dcl-ds theTable extname('T456') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T456 LIMIT 1;

theCharVar = 'Hello from P5024';
dsply theCharVar;
callp localProc();
P4857();
P312();
P1652();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5024 in the procedure';
end-proc;