**free

ctl-opt dftactgrp(*no);

dcl-pi P2245;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P645.rpgleinc'
/copy 'qrpgleref/P549.rpgleinc'
/copy 'qrpgleref/P283.rpgleinc'

dcl-ds theTable extname('T820') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T820 LIMIT 1;

theCharVar = 'Hello from P2245';
dsply theCharVar;
P645();
P549();
P283();
return;