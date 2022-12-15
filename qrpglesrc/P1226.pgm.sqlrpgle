**free

ctl-opt dftactgrp(*no);

dcl-pi P1226;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1013.rpgleinc'
/copy 'qrpgleref/P490.rpgleinc'
/copy 'qrpgleref/P223.rpgleinc'

dcl-ds theTable extname('T745') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T745 LIMIT 1;

theCharVar = 'Hello from P1226';
dsply theCharVar;
P1013();
P490();
P223();
return;