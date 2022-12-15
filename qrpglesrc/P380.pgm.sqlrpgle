**free

ctl-opt dftactgrp(*no);

dcl-pi P380;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P231.rpgleinc'
/copy 'qrpgleref/P311.rpgleinc'
/copy 'qrpgleref/P211.rpgleinc'

dcl-ds theTable extname('T534') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T534 LIMIT 1;

theCharVar = 'Hello from P380';
dsply theCharVar;
callp localProc();
P231();
P311();
P211();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P380 in the procedure';
end-proc;