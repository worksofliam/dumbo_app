**free

ctl-opt dftactgrp(*no);

dcl-pi P5444;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P130.rpgleinc'
/copy 'qrpgleref/P4588.rpgleinc'
/copy 'qrpgleref/P2873.rpgleinc'

dcl-ds theTable extname('T283') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T283 LIMIT 1;

theCharVar = 'Hello from P5444';
dsply theCharVar;
P130();
P4588();
P2873();
return;