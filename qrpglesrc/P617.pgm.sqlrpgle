**free

ctl-opt dftactgrp(*no);

dcl-pi P617;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P503.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P472.rpgleinc'

dcl-ds theTable extname('T225') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T225 LIMIT 1;

theCharVar = 'Hello from P617';
dsply theCharVar;
P503();
P101();
P472();
return;