**free

ctl-opt dftactgrp(*no);

dcl-pi P606;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P365.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'

dcl-ds theTable extname('T412') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T412 LIMIT 1;

theCharVar = 'Hello from P606';
dsply theCharVar;
callp localProc();
P365();
P255();
P173();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P606 in the procedure';
end-proc;