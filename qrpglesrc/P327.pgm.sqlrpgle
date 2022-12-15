**free

ctl-opt dftactgrp(*no);

dcl-pi P327;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'

dcl-ds theTable extname('T156') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T156 LIMIT 1;

theCharVar = 'Hello from P327';
dsply theCharVar;
P0();
P35();
P67();
return;