**free

ctl-opt dftactgrp(*no);

dcl-pi P782;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P48.rpgleinc'
/copy 'qrpgleref/P170.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds theTable extname('T644') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T644 LIMIT 1;

theCharVar = 'Hello from P782';
dsply theCharVar;
callp localProc();
P48();
P170();
P28();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P782 in the procedure';
end-proc;