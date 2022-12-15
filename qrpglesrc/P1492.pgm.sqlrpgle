**free

ctl-opt dftactgrp(*no);

dcl-pi P1492;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P122.rpgleinc'
/copy 'qrpgleref/P237.rpgleinc'
/copy 'qrpgleref/P638.rpgleinc'

dcl-ds theTable extname('T1259') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1259 LIMIT 1;

theCharVar = 'Hello from P1492';
dsply theCharVar;
callp localProc();
P122();
P237();
P638();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1492 in the procedure';
end-proc;