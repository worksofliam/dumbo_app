**free

ctl-opt dftactgrp(*no);

dcl-pi P4883;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1063.rpgleinc'
/copy 'qrpgleref/P905.rpgleinc'
/copy 'qrpgleref/P2803.rpgleinc'

dcl-ds theTable extname('T718') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T718 LIMIT 1;

theCharVar = 'Hello from P4883';
dsply theCharVar;
P1063();
P905();
P2803();
return;