**free

ctl-opt dftactgrp(*no);

dcl-pi P5061;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3841.rpgleinc'
/copy 'qrpgleref/P2270.rpgleinc'
/copy 'qrpgleref/P4602.rpgleinc'

dcl-ds theTable extname('T341') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T341 LIMIT 1;

theCharVar = 'Hello from P5061';
dsply theCharVar;
P3841();
P2270();
P4602();
return;