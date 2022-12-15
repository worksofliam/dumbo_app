**free

ctl-opt dftactgrp(*no);

dcl-pi P410;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P213.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P281.rpgleinc'

dcl-ds theTable extname('T443') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T443 LIMIT 1;

theCharVar = 'Hello from P410';
dsply theCharVar;
P213();
P102();
P281();
return;