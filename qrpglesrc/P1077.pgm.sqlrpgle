**free

ctl-opt dftactgrp(*no);

dcl-pi P1077;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P327.rpgleinc'
/copy 'qrpgleref/P927.rpgleinc'
/copy 'qrpgleref/P366.rpgleinc'

dcl-ds theTable extname('T227') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T227 LIMIT 1;

theCharVar = 'Hello from P1077';
dsply theCharVar;
P327();
P927();
P366();
return;