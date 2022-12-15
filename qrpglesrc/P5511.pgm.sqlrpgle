**free

ctl-opt dftactgrp(*no);

dcl-pi P5511;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3273.rpgleinc'
/copy 'qrpgleref/P765.rpgleinc'
/copy 'qrpgleref/P1927.rpgleinc'

dcl-ds theTable extname('T659') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T659 LIMIT 1;

theCharVar = 'Hello from P5511';
dsply theCharVar;
callp localProc();
P3273();
P765();
P1927();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5511 in the procedure';
end-proc;