**free

ctl-opt dftactgrp(*no);

dcl-pi P2138;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P894.rpgleinc'
/copy 'qrpgleref/P82.rpgleinc'

dcl-ds theTable extname('T1335') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1335 LIMIT 1;

theCharVar = 'Hello from P2138';
dsply theCharVar;
P55();
P894();
P82();
return;