**free

ctl-opt dftactgrp(*no);

dcl-pi P1497;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1064.rpgleinc'
/copy 'qrpgleref/P1095.rpgleinc'
/copy 'qrpgleref/P987.rpgleinc'

dcl-ds theTable extname('T94') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T94 LIMIT 1;

theCharVar = 'Hello from P1497';
dsply theCharVar;
P1064();
P1095();
P987();
return;