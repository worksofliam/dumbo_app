**free

ctl-opt dftactgrp(*no);

dcl-pi P4721;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1436.rpgleinc'
/copy 'qrpgleref/P4517.rpgleinc'
/copy 'qrpgleref/P3613.rpgleinc'

dcl-ds theTable extname('T665') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T665 LIMIT 1;

theCharVar = 'Hello from P4721';
dsply theCharVar;
callp localProc();
P1436();
P4517();
P3613();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4721 in the procedure';
end-proc;