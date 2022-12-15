**free

ctl-opt dftactgrp(*no);

dcl-pi P543;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P328.rpgleinc'
/copy 'qrpgleref/P410.rpgleinc'
/copy 'qrpgleref/P273.rpgleinc'

dcl-ds theTable extname('T399') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T399 LIMIT 1;

theCharVar = 'Hello from P543';
dsply theCharVar;
callp localProc();
P328();
P410();
P273();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P543 in the procedure';
end-proc;