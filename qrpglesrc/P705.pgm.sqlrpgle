**free

ctl-opt dftactgrp(*no);

dcl-pi P705;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P303.rpgleinc'
/copy 'qrpgleref/P267.rpgleinc'
/copy 'qrpgleref/P473.rpgleinc'

dcl-ds theTable extname('T1490') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1490 LIMIT 1;

theCharVar = 'Hello from P705';
dsply theCharVar;
callp localProc();
P303();
P267();
P473();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P705 in the procedure';
end-proc;