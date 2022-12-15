**free

ctl-opt dftactgrp(*no);

dcl-pi P5234;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3442.rpgleinc'
/copy 'qrpgleref/P365.rpgleinc'
/copy 'qrpgleref/P3668.rpgleinc'

dcl-ds theTable extname('T792') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T792 LIMIT 1;

theCharVar = 'Hello from P5234';
dsply theCharVar;
callp localProc();
P3442();
P365();
P3668();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5234 in the procedure';
end-proc;