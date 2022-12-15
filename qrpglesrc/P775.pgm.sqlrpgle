**free

ctl-opt dftactgrp(*no);

dcl-pi P775;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P221.rpgleinc'
/copy 'qrpgleref/P339.rpgleinc'
/copy 'qrpgleref/P677.rpgleinc'

dcl-ds theTable extname('T140') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T140 LIMIT 1;

theCharVar = 'Hello from P775';
dsply theCharVar;
callp localProc();
P221();
P339();
P677();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P775 in the procedure';
end-proc;