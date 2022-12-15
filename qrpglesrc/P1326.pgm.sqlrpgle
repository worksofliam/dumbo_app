**free

ctl-opt dftactgrp(*no);

dcl-pi P1326;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P545.rpgleinc'
/copy 'qrpgleref/P283.rpgleinc'
/copy 'qrpgleref/P367.rpgleinc'

dcl-ds theTable extname('T965') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T965 LIMIT 1;

theCharVar = 'Hello from P1326';
dsply theCharVar;
callp localProc();
P545();
P283();
P367();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1326 in the procedure';
end-proc;