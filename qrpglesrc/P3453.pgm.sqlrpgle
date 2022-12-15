**free

ctl-opt dftactgrp(*no);

dcl-pi P3453;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3287.rpgleinc'
/copy 'qrpgleref/P948.rpgleinc'
/copy 'qrpgleref/P829.rpgleinc'

dcl-ds theTable extname('T1006') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1006 LIMIT 1;

theCharVar = 'Hello from P3453';
dsply theCharVar;
callp localProc();
P3287();
P948();
P829();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3453 in the procedure';
end-proc;