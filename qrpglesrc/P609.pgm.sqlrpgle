**free

ctl-opt dftactgrp(*no);

dcl-pi P609;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P562.rpgleinc'
/copy 'qrpgleref/P256.rpgleinc'
/copy 'qrpgleref/P540.rpgleinc'

dcl-ds theTable extname('T192') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T192 LIMIT 1;

theCharVar = 'Hello from P609';
dsply theCharVar;
callp localProc();
P562();
P256();
P540();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P609 in the procedure';
end-proc;