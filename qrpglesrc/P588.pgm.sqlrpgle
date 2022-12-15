**free

ctl-opt dftactgrp(*no);

dcl-pi P588;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P416.rpgleinc'
/copy 'qrpgleref/P383.rpgleinc'

dcl-ds theTable extname('T161') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T161 LIMIT 1;

theCharVar = 'Hello from P588';
dsply theCharVar;
callp localProc();
P6();
P416();
P383();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P588 in the procedure';
end-proc;