**free

ctl-opt dftactgrp(*no);

dcl-pi P3142;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P875.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P640.rpgleinc'

dcl-ds theTable extname('T844') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T844 LIMIT 1;

theCharVar = 'Hello from P3142';
dsply theCharVar;
callp localProc();
P875();
P22();
P640();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3142 in the procedure';
end-proc;