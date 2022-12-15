**free

ctl-opt dftactgrp(*no);

dcl-pi P741;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P250.rpgleinc'
/copy 'qrpgleref/P631.rpgleinc'
/copy 'qrpgleref/P283.rpgleinc'

dcl-ds theTable extname('T25') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T25 LIMIT 1;

theCharVar = 'Hello from P741';
dsply theCharVar;
P250();
P631();
P283();
return;