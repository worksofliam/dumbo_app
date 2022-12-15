**free

ctl-opt dftactgrp(*no);

dcl-pi P0;
end-pi;

dcl-s theCharVar Char(52);


dcl-ds theTable extname('T126') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T126 LIMIT 1;

theCharVar = 'Hello from P0';
dsply theCharVar;
return;