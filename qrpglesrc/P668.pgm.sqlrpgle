**free

ctl-opt dftactgrp(*no);

dcl-pi P668;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P533.rpgleinc'
/copy 'qrpgleref/P249.rpgleinc'

dcl-ds theTable extname('T43') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T43 LIMIT 1;

theCharVar = 'Hello from P668';
dsply theCharVar;
P36();
P533();
P249();
return;