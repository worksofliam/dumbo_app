**free

ctl-opt dftactgrp(*no);

dcl-pi P254;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P228.rpgleinc'
/copy 'qrpgleref/P218.rpgleinc'
/copy 'qrpgleref/P94.rpgleinc'

dcl-ds theTable extname('T81') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T81 LIMIT 1;

theCharVar = 'Hello from P254';
dsply theCharVar;
P228();
P218();
P94();
return;