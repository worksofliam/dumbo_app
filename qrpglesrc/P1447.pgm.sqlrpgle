**free

ctl-opt dftactgrp(*no);

dcl-pi P1447;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P813.rpgleinc'
/copy 'qrpgleref/P945.rpgleinc'
/copy 'qrpgleref/P1117.rpgleinc'

dcl-ds theTable extname('T229') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T229 LIMIT 1;

theCharVar = 'Hello from P1447';
dsply theCharVar;
callp localProc();
P813();
P945();
P1117();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1447 in the procedure';
end-proc;