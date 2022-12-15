**free

ctl-opt dftactgrp(*no);

dcl-pi P3519;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2058.rpgleinc'
/copy 'qrpgleref/P1931.rpgleinc'
/copy 'qrpgleref/P3324.rpgleinc'

dcl-ds theTable extname('T850') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T850 LIMIT 1;

theCharVar = 'Hello from P3519';
dsply theCharVar;
P2058();
P1931();
P3324();
return;