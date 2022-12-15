**free

ctl-opt dftactgrp(*no);

dcl-pi P73;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P62.rpgleinc'

dcl-ds theTable extname('T37') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T37 LIMIT 1;

theCharVar = 'Hello from P73';
dsply theCharVar;
callp localProc();
P31();
P39();
P62();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P73 in the procedure';
end-proc;