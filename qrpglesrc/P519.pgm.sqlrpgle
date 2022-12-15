**free

ctl-opt dftactgrp(*no);

dcl-pi P519;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P488.rpgleinc'
/copy 'qrpgleref/P391.rpgleinc'
/copy 'qrpgleref/P416.rpgleinc'

dcl-ds theTable extname('T218') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T218 LIMIT 1;

theCharVar = 'Hello from P519';
dsply theCharVar;
callp localProc();
P488();
P391();
P416();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P519 in the procedure';
end-proc;