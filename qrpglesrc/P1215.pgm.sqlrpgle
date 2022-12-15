**free

ctl-opt dftactgrp(*no);

dcl-pi P1215;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1115.rpgleinc'
/copy 'qrpgleref/P941.rpgleinc'
/copy 'qrpgleref/P1181.rpgleinc'

dcl-ds theTable extname('T199') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T199 LIMIT 1;

theCharVar = 'Hello from P1215';
dsply theCharVar;
P1115();
P941();
P1181();
return;