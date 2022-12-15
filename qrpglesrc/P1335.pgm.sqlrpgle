**free

ctl-opt dftactgrp(*no);

dcl-pi P1335;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P271.rpgleinc'
/copy 'qrpgleref/P355.rpgleinc'
/copy 'qrpgleref/P417.rpgleinc'

dcl-ds theTable extname('T226') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T226 LIMIT 1;

theCharVar = 'Hello from P1335';
dsply theCharVar;
callp localProc();
P271();
P355();
P417();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1335 in the procedure';
end-proc;