**free

ctl-opt dftactgrp(*no);

dcl-pi P2182;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1764.rpgleinc'
/copy 'qrpgleref/P1003.rpgleinc'
/copy 'qrpgleref/P606.rpgleinc'

dcl-ds theTable extname('T1307') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1307 LIMIT 1;

theCharVar = 'Hello from P2182';
dsply theCharVar;
P1764();
P1003();
P606();
return;