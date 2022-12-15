**free

ctl-opt dftactgrp(*no);

dcl-pi P998;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P997.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'
/copy 'qrpgleref/P214.rpgleinc'

dcl-ds theTable extname('T226') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T226 LIMIT 1;

theCharVar = 'Hello from P998';
dsply theCharVar;
callp localProc();
P997();
P255();
P214();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P998 in the procedure';
end-proc;