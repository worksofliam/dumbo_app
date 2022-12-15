**free

ctl-opt dftactgrp(*no);

dcl-pi P534;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P362.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'
/copy 'qrpgleref/P200.rpgleinc'

dcl-ds theTable extname('T114') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T114 LIMIT 1;

theCharVar = 'Hello from P534';
dsply theCharVar;
P362();
P119();
P200();
return;