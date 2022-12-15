**free

ctl-opt dftactgrp(*no);

dcl-pi P682;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P140.rpgleinc'
/copy 'qrpgleref/P460.rpgleinc'
/copy 'qrpgleref/P169.rpgleinc'

dcl-ds theTable extname('T787') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T787 LIMIT 1;

theCharVar = 'Hello from P682';
dsply theCharVar;
P140();
P460();
P169();
return;