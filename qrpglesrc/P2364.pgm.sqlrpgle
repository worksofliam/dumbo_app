**free

ctl-opt dftactgrp(*no);

dcl-pi P2364;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P141.rpgleinc'
/copy 'qrpgleref/P1961.rpgleinc'
/copy 'qrpgleref/P981.rpgleinc'

dcl-ds theTable extname('T820') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T820 LIMIT 1;

theCharVar = 'Hello from P2364';
dsply theCharVar;
P141();
P1961();
P981();
return;