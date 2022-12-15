**free

ctl-opt dftactgrp(*no);

dcl-pi P262;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P103.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P238.rpgleinc'

dcl-ds theTable extname('T671') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T671 LIMIT 1;

theCharVar = 'Hello from P262';
dsply theCharVar;
P103();
P12();
P238();
return;