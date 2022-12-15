**free

ctl-opt dftactgrp(*no);

dcl-pi P144;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P75.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'

dcl-ds theTable extname('T208') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T208 LIMIT 1;

theCharVar = 'Hello from P144';
dsply theCharVar;
P49();
P75();
P15();
return;