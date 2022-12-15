**free

ctl-opt dftactgrp(*no);

dcl-pi P156;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P103.rpgleinc'
/copy 'qrpgleref/P150.rpgleinc'

dcl-ds theTable extname('T262') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T262 LIMIT 1;

theCharVar = 'Hello from P156';
dsply theCharVar;
P61();
P103();
P150();
return;