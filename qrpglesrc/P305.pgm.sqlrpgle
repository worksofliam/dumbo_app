**free

ctl-opt dftactgrp(*no);

dcl-pi P305;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P116.rpgleinc'
/copy 'qrpgleref/P251.rpgleinc'

dcl-ds theTable extname('T836') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T836 LIMIT 1;

theCharVar = 'Hello from P305';
dsply theCharVar;
P70();
P116();
P251();
return;