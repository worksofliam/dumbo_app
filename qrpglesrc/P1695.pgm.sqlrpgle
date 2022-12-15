**free

ctl-opt dftactgrp(*no);

dcl-pi P1695;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1417.rpgleinc'
/copy 'qrpgleref/P614.rpgleinc'
/copy 'qrpgleref/P1012.rpgleinc'

dcl-ds theTable extname('T933') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T933 LIMIT 1;

theCharVar = 'Hello from P1695';
dsply theCharVar;
callp localProc();
P1417();
P614();
P1012();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1695 in the procedure';
end-proc;