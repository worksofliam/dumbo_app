**free

ctl-opt dftactgrp(*no);

dcl-pi P125;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'

dcl-ds theTable extname('T79') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T79 LIMIT 1;

theCharVar = 'Hello from P125';
dsply theCharVar;
P30();
P121();
P26();
return;