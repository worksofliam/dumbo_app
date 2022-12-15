**free

ctl-opt dftactgrp(*no);

dcl-pi P998;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P547.rpgleinc'
/copy 'qrpgleref/P858.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'

dcl-ds theTable extname('T305') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T305 LIMIT 1;

theCharVar = 'Hello from P998';
dsply theCharVar;
P547();
P858();
P128();
return;