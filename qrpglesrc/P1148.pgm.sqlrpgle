**free

ctl-opt dftactgrp(*no);

dcl-pi P1148;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P565.rpgleinc'
/copy 'qrpgleref/P559.rpgleinc'
/copy 'qrpgleref/P861.rpgleinc'

dcl-ds theTable extname('T172') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T172 LIMIT 1;

theCharVar = 'Hello from P1148';
dsply theCharVar;
P565();
P559();
P861();
return;