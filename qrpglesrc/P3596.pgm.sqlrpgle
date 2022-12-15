**free

ctl-opt dftactgrp(*no);

dcl-pi P3596;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3322.rpgleinc'
/copy 'qrpgleref/P3486.rpgleinc'
/copy 'qrpgleref/P1303.rpgleinc'

dcl-ds theTable extname('T829') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T829 LIMIT 1;

theCharVar = 'Hello from P3596';
dsply theCharVar;
callp localProc();
P3322();
P3486();
P1303();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3596 in the procedure';
end-proc;