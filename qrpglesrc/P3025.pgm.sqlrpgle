**free

ctl-opt dftactgrp(*no);

dcl-pi P3025;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1412.rpgleinc'
/copy 'qrpgleref/P2054.rpgleinc'
/copy 'qrpgleref/P2574.rpgleinc'

dcl-ds theTable extname('T1168') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1168 LIMIT 1;

theCharVar = 'Hello from P3025';
dsply theCharVar;
callp localProc();
P1412();
P2054();
P2574();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3025 in the procedure';
end-proc;