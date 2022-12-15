**free

ctl-opt dftactgrp(*no);

dcl-pi P3875;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2069.rpgleinc'
/copy 'qrpgleref/P2039.rpgleinc'
/copy 'qrpgleref/P3680.rpgleinc'

dcl-ds theTable extname('T1867') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1867 LIMIT 1;

theCharVar = 'Hello from P3875';
dsply theCharVar;
callp localProc();
P2069();
P2039();
P3680();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3875 in the procedure';
end-proc;