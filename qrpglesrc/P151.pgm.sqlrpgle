**free

ctl-opt dftactgrp(*no);

dcl-pi P151;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P125.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P121.rpgleinc'

dcl-ds theTable extname('T78') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T78 LIMIT 1;

theCharVar = 'Hello from P151';
dsply theCharVar;
callp localProc();
P125();
P73();
P121();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P151 in the procedure';
end-proc;