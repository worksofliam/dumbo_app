**free

ctl-opt dftactgrp(*no);

dcl-pi P364;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P190.rpgleinc'
/copy 'qrpgleref/P270.rpgleinc'
/copy 'qrpgleref/P226.rpgleinc'

dcl-ds theTable extname('T114') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T114 LIMIT 1;

theCharVar = 'Hello from P364';
dsply theCharVar;
P190();
P270();
P226();
return;