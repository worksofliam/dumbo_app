**free

ctl-opt dftactgrp(*no);

dcl-pi P897;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P817.rpgleinc'
/copy 'qrpgleref/P631.rpgleinc'
/copy 'qrpgleref/P473.rpgleinc'

dcl-ds theTable extname('T1847') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1847 LIMIT 1;

theCharVar = 'Hello from P897';
dsply theCharVar;
callp localProc();
P817();
P631();
P473();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P897 in the procedure';
end-proc;