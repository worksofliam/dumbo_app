**free

ctl-opt dftactgrp(*no);

dcl-pi P167;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P129.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'

dcl-ds theTable extname('T728') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T728 LIMIT 1;

theCharVar = 'Hello from P167';
dsply theCharVar;
callp localProc();
P129();
P4();
P110();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P167 in the procedure';
end-proc;