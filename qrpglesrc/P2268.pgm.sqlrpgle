**free

ctl-opt dftactgrp(*no);

dcl-pi P2268;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P169.rpgleinc'
/copy 'qrpgleref/P582.rpgleinc'
/copy 'qrpgleref/P1385.rpgleinc'

dcl-ds theTable extname('T834') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T834 LIMIT 1;

theCharVar = 'Hello from P2268';
dsply theCharVar;
P169();
P582();
P1385();
return;