**free

ctl-opt dftactgrp(*no);

dcl-pi P517;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P420.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P328.rpgleinc'

dcl-ds theTable extname('T993') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T993 LIMIT 1;

theCharVar = 'Hello from P517';
dsply theCharVar;
callp localProc();
P420();
P15();
P328();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P517 in the procedure';
end-proc;