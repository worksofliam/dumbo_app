**free

ctl-opt dftactgrp(*no);

dcl-pi P729;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P628.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P156.rpgleinc'

dcl-ds theTable extname('T212') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T212 LIMIT 1;

theCharVar = 'Hello from P729';
dsply theCharVar;
callp localProc();
P628();
P44();
P156();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P729 in the procedure';
end-proc;