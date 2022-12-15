**free

ctl-opt dftactgrp(*no);

dcl-pi P845;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P302.rpgleinc'
/copy 'qrpgleref/P643.rpgleinc'
/copy 'qrpgleref/P717.rpgleinc'

dcl-ds theTable extname('T391') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T391 LIMIT 1;

theCharVar = 'Hello from P845';
dsply theCharVar;
P302();
P643();
P717();
return;