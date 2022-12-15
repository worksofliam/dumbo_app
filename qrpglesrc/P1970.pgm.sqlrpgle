**free

ctl-opt dftactgrp(*no);

dcl-pi P1970;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1748.rpgleinc'
/copy 'qrpgleref/P1945.rpgleinc'
/copy 'qrpgleref/P1024.rpgleinc'

dcl-ds theTable extname('T922') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T922 LIMIT 1;

theCharVar = 'Hello from P1970';
dsply theCharVar;
P1748();
P1945();
P1024();
return;