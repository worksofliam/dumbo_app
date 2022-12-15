**free

ctl-opt dftactgrp(*no);

dcl-pi P448;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P279.rpgleinc'
/copy 'qrpgleref/P426.rpgleinc'
/copy 'qrpgleref/P82.rpgleinc'

dcl-ds theTable extname('T270') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T270 LIMIT 1;

theCharVar = 'Hello from P448';
dsply theCharVar;
P279();
P426();
P82();
return;