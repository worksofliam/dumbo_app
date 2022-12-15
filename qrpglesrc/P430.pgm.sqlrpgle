**free

ctl-opt dftactgrp(*no);

dcl-pi P430;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P385.rpgleinc'
/copy 'qrpgleref/P298.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'

dcl-ds theTable extname('T114') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T114 LIMIT 1;

theCharVar = 'Hello from P430';
dsply theCharVar;
P385();
P298();
P64();
return;