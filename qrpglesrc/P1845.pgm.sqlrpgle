**free

ctl-opt dftactgrp(*no);

dcl-pi P1845;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1001.rpgleinc'
/copy 'qrpgleref/P1314.rpgleinc'
/copy 'qrpgleref/P1064.rpgleinc'

dcl-ds theTable extname('T845') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T845 LIMIT 1;

theCharVar = 'Hello from P1845';
dsply theCharVar;
P1001();
P1314();
P1064();
return;