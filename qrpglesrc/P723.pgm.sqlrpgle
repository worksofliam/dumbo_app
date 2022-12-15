**free

ctl-opt dftactgrp(*no);

dcl-pi P723;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P345.rpgleinc'
/copy 'qrpgleref/P549.rpgleinc'

dcl-ds theTable extname('T18') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T18 LIMIT 1;

theCharVar = 'Hello from P723';
dsply theCharVar;
callp localProc();
P345();
P549();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P723 in the procedure';
end-proc;