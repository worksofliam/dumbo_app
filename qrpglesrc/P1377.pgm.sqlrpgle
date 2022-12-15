**free

ctl-opt dftactgrp(*no);

dcl-pi P1377;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1074.rpgleinc'
/copy 'qrpgleref/P736.rpgleinc'
/copy 'qrpgleref/P335.rpgleinc'

dcl-ds theTable extname('T182') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T182 LIMIT 1;

theCharVar = 'Hello from P1377';
dsply theCharVar;
callp localProc();
P1074();
P736();
P335();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1377 in the procedure';
end-proc;