**free

ctl-opt dftactgrp(*no);

dcl-pi P3619;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1380.rpgleinc'
/copy 'qrpgleref/P2069.rpgleinc'
/copy 'qrpgleref/P889.rpgleinc'

dcl-ds theTable extname('T903') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T903 LIMIT 1;

theCharVar = 'Hello from P3619';
dsply theCharVar;
P1380();
P2069();
P889();
return;