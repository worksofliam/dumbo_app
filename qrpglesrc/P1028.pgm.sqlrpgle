**free

ctl-opt dftactgrp(*no);

dcl-pi P1028;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P716.rpgleinc'
/copy 'qrpgleref/P816.rpgleinc'
/copy 'qrpgleref/P325.rpgleinc'

dcl-ds theTable extname('T354') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T354 LIMIT 1;

theCharVar = 'Hello from P1028';
dsply theCharVar;
callp localProc();
P716();
P816();
P325();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1028 in the procedure';
end-proc;