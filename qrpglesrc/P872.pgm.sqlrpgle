**free

ctl-opt dftactgrp(*no);

dcl-pi P872;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P369.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P856.rpgleinc'

dcl-ds theTable extname('T152') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T152 LIMIT 1;

theCharVar = 'Hello from P872';
dsply theCharVar;
callp localProc();
P369();
P43();
P856();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P872 in the procedure';
end-proc;