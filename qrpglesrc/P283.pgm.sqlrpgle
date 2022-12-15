**free

ctl-opt dftactgrp(*no);

dcl-pi P283;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P169.rpgleinc'
/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P178.rpgleinc'

dcl-ds theTable extname('T1757') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1757 LIMIT 1;

theCharVar = 'Hello from P283';
dsply theCharVar;
P169();
P85();
P178();
return;