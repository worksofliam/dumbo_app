**free

ctl-opt dftactgrp(*no);

dcl-pi P3616;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2134.rpgleinc'
/copy 'qrpgleref/P1484.rpgleinc'
/copy 'qrpgleref/P2273.rpgleinc'

dcl-ds theTable extname('T25') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T25 LIMIT 1;

theCharVar = 'Hello from P3616';
dsply theCharVar;
callp localProc();
P2134();
P1484();
P2273();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3616 in the procedure';
end-proc;