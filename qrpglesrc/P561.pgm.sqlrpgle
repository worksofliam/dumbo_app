**free

ctl-opt dftactgrp(*no);

dcl-pi P561;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P337.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'

dcl-ds theTable extname('T141') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T141 LIMIT 1;

theCharVar = 'Hello from P561';
dsply theCharVar;
P63();
P337();
P3();
return;