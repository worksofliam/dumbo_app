**free

ctl-opt dftactgrp(*no);

dcl-pi P68;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P48.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'

dcl-ds theTable extname('T306') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T306 LIMIT 1;

theCharVar = 'Hello from P68';
dsply theCharVar;
callp localProc();
P48();
P23();
P38();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P68 in the procedure';
end-proc;