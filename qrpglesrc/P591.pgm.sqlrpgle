**free

ctl-opt dftactgrp(*no);

dcl-pi P591;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P268.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'
/copy 'qrpgleref/P574.rpgleinc'

dcl-ds theTable extname('T151') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T151 LIMIT 1;

theCharVar = 'Hello from P591';
dsply theCharVar;
P268();
P64();
P574();
return;