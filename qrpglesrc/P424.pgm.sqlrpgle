**free

ctl-opt dftactgrp(*no);

dcl-pi P424;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P384.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'
/copy 'qrpgleref/P369.rpgleinc'

dcl-ds theTable extname('T228') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T228 LIMIT 1;

theCharVar = 'Hello from P424';
dsply theCharVar;
P384();
P74();
P369();
return;