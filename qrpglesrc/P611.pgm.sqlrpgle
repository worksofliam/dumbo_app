**free

ctl-opt dftactgrp(*no);

dcl-pi P611;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P476.rpgleinc'
/copy 'qrpgleref/P106.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'

dcl-ds theTable extname('T149') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T149 LIMIT 1;

theCharVar = 'Hello from P611';
dsply theCharVar;
callp localProc();
P476();
P106();
P112();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P611 in the procedure';
end-proc;