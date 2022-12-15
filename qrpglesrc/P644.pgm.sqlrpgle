**free

ctl-opt dftactgrp(*no);

dcl-pi P644;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P197.rpgleinc'
/copy 'qrpgleref/P484.rpgleinc'
/copy 'qrpgleref/P322.rpgleinc'

dcl-ds theTable extname('T46') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T46 LIMIT 1;

theCharVar = 'Hello from P644';
dsply theCharVar;
callp localProc();
P197();
P484();
P322();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P644 in the procedure';
end-proc;