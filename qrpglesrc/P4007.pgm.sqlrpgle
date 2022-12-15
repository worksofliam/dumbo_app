**free

ctl-opt dftactgrp(*no);

dcl-pi P4007;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2292.rpgleinc'
/copy 'qrpgleref/P527.rpgleinc'
/copy 'qrpgleref/P987.rpgleinc'

dcl-ds theTable extname('T1567') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1567 LIMIT 1;

theCharVar = 'Hello from P4007';
dsply theCharVar;
P2292();
P527();
P987();
return;