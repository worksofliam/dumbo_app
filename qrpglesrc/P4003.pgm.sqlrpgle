**free

ctl-opt dftactgrp(*no);

dcl-pi P4003;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1371.rpgleinc'
/copy 'qrpgleref/P3420.rpgleinc'
/copy 'qrpgleref/P1131.rpgleinc'

dcl-ds theTable extname('T882') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T882 LIMIT 1;

theCharVar = 'Hello from P4003';
dsply theCharVar;
callp localProc();
P1371();
P3420();
P1131();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4003 in the procedure';
end-proc;