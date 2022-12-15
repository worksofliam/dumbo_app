**free

ctl-opt dftactgrp(*no);

dcl-pi P1566;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P980.rpgleinc'
/copy 'qrpgleref/P1156.rpgleinc'
/copy 'qrpgleref/P264.rpgleinc'

dcl-ds theTable extname('T952') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T952 LIMIT 1;

theCharVar = 'Hello from P1566';
dsply theCharVar;
callp localProc();
P980();
P1156();
P264();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1566 in the procedure';
end-proc;