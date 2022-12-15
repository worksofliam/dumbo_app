**free

ctl-opt dftactgrp(*no);

dcl-pi P198;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'

dcl-ds theTable extname('T592') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T592 LIMIT 1;

theCharVar = 'Hello from P198';
dsply theCharVar;
P71();
P21();
P119();
return;