**free

ctl-opt dftactgrp(*no);

dcl-pi P945;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P579.rpgleinc'
/copy 'qrpgleref/P736.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'

dcl-ds theTable extname('T958') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T958 LIMIT 1;

theCharVar = 'Hello from P945';
dsply theCharVar;
P579();
P736();
P68();
return;