**free

ctl-opt dftactgrp(*no);

dcl-pi P3744;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P1483.rpgleinc'
/copy 'qrpgleref/P3136.rpgleinc'

dcl-ds theTable extname('T206') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T206 LIMIT 1;

theCharVar = 'Hello from P3744';
dsply theCharVar;
P98();
P1483();
P3136();
return;