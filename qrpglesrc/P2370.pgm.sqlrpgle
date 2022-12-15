**free

ctl-opt dftactgrp(*no);

dcl-pi P2370;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1157.rpgleinc'
/copy 'qrpgleref/P475.rpgleinc'
/copy 'qrpgleref/P1833.rpgleinc'

dcl-ds theTable extname('T1605') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1605 LIMIT 1;

theCharVar = 'Hello from P2370';
dsply theCharVar;
P1157();
P475();
P1833();
return;