**free

ctl-opt dftactgrp(*no);

dcl-pi P3591;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P395.rpgleinc'
/copy 'qrpgleref/P1830.rpgleinc'
/copy 'qrpgleref/P3532.rpgleinc'

dcl-ds theTable extname('T273') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T273 LIMIT 1;

theCharVar = 'Hello from P3591';
dsply theCharVar;
P395();
P1830();
P3532();
return;