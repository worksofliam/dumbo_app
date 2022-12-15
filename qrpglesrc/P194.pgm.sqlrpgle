**free

ctl-opt dftactgrp(*no);

dcl-pi P194;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P111.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'

dcl-ds theTable extname('T137') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T137 LIMIT 1;

theCharVar = 'Hello from P194';
dsply theCharVar;
callp localProc();
P73();
P111();
P63();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P194 in the procedure';
end-proc;